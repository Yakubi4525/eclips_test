import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:user_app/core/error/exceptions.dart';
import 'package:user_app/core/error/failures.dart';
import 'package:user_app/core/logger/logger_impl.dart';
import 'package:user_app/core/network_check/network_info.dart';
import 'package:user_app/features/user_list/data/datasources/local/local_service.dart';
import 'package:user_app/features/user_list/data/datasources/network/sources/service_api.dart';
import 'package:user_app/features/user_list/domain/entetties/album.dart';
import 'package:user_app/features/user_list/domain/entetties/comment.dart';
import 'package:user_app/features/user_list/domain/entetties/photo.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';
import 'package:user_app/features/user_list/domain/reositories/data_repository.dart';

@LazySingleton(as: DataRepository)
class DataRepositoryImpl extends DataRepository {
  final ServerApi serverApi;
  final LocalService localService;
  final NetworkInfo networkInfo;

  DataRepositoryImpl({
    required this.serverApi,
    required this.localService,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<User>>> getAllUser() async {
    final bool hasConnection = await networkInfo.isConnected();
    try {
      var userList = await localService.getAllusers();
      if (userList.isEmpty) {
        if (!hasConnection) {
          return left(const NoInternetFailure());
        } else {
          userList = await serverApi.getAllUsers();
          await localService.setAllusers(userList);
        }
      }
      return right(userList);
    } on ServerException catch (e) {
      return left(
        ServerFailure(
          error: e.error,
          stack: e.stack,
        ),
      );
    } catch (error) {
      logger.e(error.toString());
      return left(
        ServerFailure(
          error: error.toString(),
          stack: error.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Post>>> getUserPosts(
      {required int userId}) async {
    final bool hasConnection = await networkInfo.isConnected();
    try {
      var userPostsList = await localService.getUserPosts(userId: userId);
      if (userPostsList.isEmpty) {
        if (!hasConnection) {
          return left(const NoInternetFailure());
        } else {
          userPostsList = await serverApi.getAllPosts(userId: userId);
          await localService.setUserPosts(
              postList: userPostsList, userId: userId);
        }
      }
      return right(userPostsList);
    } on ServerException catch (e) {
      return left(
        ServerFailure(
          error: e.error,
          stack: e.stack,
        ),
      );
    } catch (error) {
      logger.e(error.toString());
      return left(
        ServerFailure(
          error: error.toString(),
          stack: error.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Album>>> getUserAlbums(
      {required int userId}) async {
    final bool hasConnection = await networkInfo.isConnected();

    try {
      var userAlbumList = await localService.getUserAlbums(userId: userId);
      if (userAlbumList.isEmpty) {
        if (!hasConnection) {
          return left(const NoInternetFailure());
        } else {
          userAlbumList = await serverApi.getAllAlbums(userId: userId);
          await localService.setUserAlbums(
              albumList: userAlbumList, userId: userId);
        }
      }
      return right(userAlbumList);
    } on ServerException catch (e) {
      return left(
        ServerFailure(
          error: e.error,
          stack: e.stack,
        ),
      );
    } catch (error) {
      logger.e(error.toString());
      return left(
        ServerFailure(
          error: error.toString(),
          stack: error.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Comment>>> getPostComments(
      {required int postId}) async {
    final bool hasConnection = await networkInfo.isConnected();

    try {
      var commentList = await localService.getPostComments(postId: postId);
      if (commentList.isEmpty) {
        if (!hasConnection) {
          return left(const NoInternetFailure());
        } else {
          commentList = await serverApi.getPostComments(postId: postId);
          await localService.setPostComments(
              commentList: commentList, postId: postId);
        }
      }
      return right(commentList);
    } on ServerException catch (e) {
      return left(
        ServerFailure(
          error: e.error,
          stack: e.stack,
        ),
      );
    } catch (error) {
      logger.e(error.toString());
      return left(
        ServerFailure(
          error: error.toString(),
          stack: error.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> setOneComment(
      {required Comment comment}) async {
    final bool hasConnection = await networkInfo.isConnected();
    try {
      await localService.setLocalComment(comment: comment);
      if (!hasConnection) {
        return left(const NoInternetFailure());
      } else {
        var apiComment = await serverApi.addComments(comment: comment);
        if (apiComment == true) {
          return right(true);
        }
      }
      return right(false);
    } on ServerException catch (e) {
      return left(
        ServerFailure(
          error: e.error,
          stack: e.stack,
        ),
      );
    } catch (error) {
      logger.e(error.toString());
      return left(
        ServerFailure(
          error: error.toString(),
          stack: error.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Photos>>> getAlbumPhotos(
      {required int albumId}) async {
    final bool hasConnection = await networkInfo.isConnected();

    try {
      var photoList = await localService.getAlbumPhotos(albumId: albumId);
      if (photoList.isEmpty) {
        if (!hasConnection) {
          return left(const NoInternetFailure());
        } else {
          photoList = await serverApi.getAlbumPhotos(albumId: albumId);
        }
        await localService.setAlbumPhotos(
            photoLiist: photoList, albumId: albumId);
      }
      return right(photoList);
    } on ServerException catch (e) {
      return left(
        ServerFailure(
          error: e.error,
          stack: e.stack,
        ),
      );
    } catch (error) {
      logger.e(error.toString());
      return left(
        ServerFailure(
          error: error.toString(),
          stack: error.toString(),
        ),
      );
    }
  }
}
