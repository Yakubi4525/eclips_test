import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:injectable/injectable.dart';
import 'package:user_app/core/error/exceptions.dart';
import 'package:user_app/core/logger/logger_impl.dart';
import 'package:user_app/features/user_list/data/datasources/network/request_mapper/service_request.dart';
import 'package:user_app/features/user_list/data/datasources/network/sources/service_api.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';
import 'package:user_app/features/user_list/domain/entetties/photo.dart';
import 'package:user_app/features/user_list/domain/entetties/comment.dart';
import 'package:user_app/features/user_list/domain/entetties/album.dart';

const mainUrl = "https://jsonplaceholder.typicode.com";

@LazySingleton(as: ServerApi)
class ServerApiImpl extends ServerApi {
  final Dio dio;
  ServerApiImpl({
    required this.dio,
  });
  @override
  Future<List<User>> getAllUsers() async {
    try {
      var response = await dio.get('$mainUrl/users');
      return (response.data as List)
          .map((user) => User.fromJson(user))
          .toList();
    } on DioError catch (e) {
      logger.e(e.response!.statusCode, e.response!.data);
      if (e.response!.statusCode == HttpStatus.badRequest) {
        throw InvalidOneTimeCodeException();
      } else {
        throw ServerException(
          error: '${e.response!.statusCode}',
          stack: '${e.response!.data}',
        );
      }
    }
  }

  @override
  Future<List<Post>> getAllPosts({required int userId}) async {
    try {
      var response = await dio.get('$mainUrl/posts?userId=$userId');
      logger.d(response.data);
      return (response.data as List)
          .map((post) => Post.fromJson(post))
          .toList();
    } on DioError catch (e) {
      logger.e(e.response!.statusCode, e.response!.data);
      if (e.response!.statusCode == HttpStatus.badRequest) {
        throw InvalidOneTimeCodeException();
      } else {
        throw ServerException(
          error: '${e.response!.statusCode}',
          stack: '${e.response!.data}',
        );
      }
    }
  }

  @override
  Future<List<Album>> getAllAlbums({required int userId}) async {
    try {
      var response = await dio.get('$mainUrl/albums?userId=$userId');
      logger.d(response.data);
      return (response.data as List)
          .map((album) => Album.fromJson(album))
          .toList();
    } on DioError catch (e) {
      logger.e(e.response!.statusCode, e.response!.data);
      if (e.response!.statusCode == HttpStatus.badRequest) {
        throw InvalidOneTimeCodeException();
      } else {
        throw ServerException(
          error: '${e.response!.statusCode}',
          stack: '${e.response!.data}',
        );
      }
    }
  }

  @override
  Future<List<Comment>> getPostComments({required int postId}) async {
    try {
      var response = await dio.get('$mainUrl/comments?postId=$postId');
      logger.d(response.data);
      return (response.data as List)
          .map((album) => Comment.fromJson(album))
          .toList();
    } on DioError catch (e) {
      logger.e(e.response!.statusCode, e.response!.data);
      if (e.response!.statusCode == HttpStatus.badRequest) {
        throw InvalidOneTimeCodeException();
      } else {
        throw ServerException(
          error: '${e.response!.statusCode}',
          stack: '${e.response!.data}',
        );
      }
    }
  }

  @override
  Future<List<Photos>> getAlbumPhotos({required int albumId}) async {
    try {
      var response = await dio.get('$mainUrl/photos?albumId=$albumId');
      logger.d(response.data);
      return (response.data as List)
          .map((album) => Photos.fromJson(album))
          .toList();
    } on DioError catch (e) {
      logger.e(e.response!.statusCode, e.response!.data);
      if (e.response!.statusCode == HttpStatus.badRequest) {
        throw InvalidOneTimeCodeException();
      } else {
        throw ServerException(
          error: '${e.response!.statusCode}',
          stack: '${e.response!.data}',
        );
      }
    }
  }

  @override
  Future<bool> addComments({required Comment comment}) async {
    try {
      var response = await dio.post(
          '$mainUrl/comments?postId=${comment.postId}',
          data: ServiceRequest.getCommentBody(comment));
      logger.d(response.data);
        return true;
      
    } on DioError catch (e) {
      logger.e(e.response!.statusCode, e.response!.data);
      if (e.response!.statusCode == HttpStatus.badRequest) {
        throw InvalidOneTimeCodeException();
      } else {
        throw ServerException(
          error: '${e.response!.statusCode}',
          stack: '${e.response!.data}',
        );
      }
    }
  }
}
