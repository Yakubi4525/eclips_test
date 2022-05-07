import 'package:user_app/features/user_list/domain/entetties/album.dart';
import 'package:user_app/features/user_list/domain/entetties/comment.dart';
import 'package:user_app/features/user_list/domain/entetties/photo.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';

abstract class LocalService {
  Future setAllusers(List<User> userList);
  Future setUserPosts({
    required List<Post> postList,
    required int userId,
  });

  Future setUserAlbums({
    required List<Album> albumList,
    required int userId,
  });

  Future setPostComments({
    required List<Comment> commentList,
    required int postId,
  });

  Future setLocalComment({
    required Comment comment,
  });

  Future setAlbumPhotos({
    required List<Photos> photoLiist,
    required int albumId,
  });
  Future<List<User>> getAllusers();

  Future<List<Post>> getUserPosts({
    required int userId,
  });

  Future<List<Album>> getUserAlbums({
    required int userId,
  });

  Future<List<Comment>> getPostComments({
    required int postId,
  });

  Future<List<Photos>> getAlbumPhotos({
    required int albumId,
  });
}
