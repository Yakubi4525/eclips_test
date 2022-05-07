import 'package:dartz/dartz.dart';
import 'package:user_app/core/error/failures.dart';
import 'package:user_app/features/user_list/domain/entetties/album.dart';
import 'package:user_app/features/user_list/domain/entetties/comment.dart';
import 'package:user_app/features/user_list/domain/entetties/photo.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';

abstract class DataRepository {
  Future<Either<Failure,List<User>>> getAllUser();

  Future<Either<Failure,List<Post>>> getUserPosts({required int userId}); 

  Future<Either<Failure,List<Album>>> getUserAlbums({required int userId}); 

  Future<Either<Failure,List<Comment>>> getPostComments({required int postId}); 

  Future<Either<Failure,void>> setOneComment({required Comment comment}); 

  Future<Either<Failure,List<Photos>>> getAlbumPhotos({required int albumId}); 
}
