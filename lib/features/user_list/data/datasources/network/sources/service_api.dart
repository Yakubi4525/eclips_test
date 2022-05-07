import 'package:user_app/features/user_list/domain/entetties/album.dart';
import 'package:user_app/features/user_list/domain/entetties/comment.dart';
import 'package:user_app/features/user_list/domain/entetties/photo.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';

abstract class ServerApi {
  Future<List<User>> getAllUsers();

  Future<List<Post>> getAllPosts({required int userId});

  Future<List<Album>> getAllAlbums({required int userId});

  Future<List<Comment>> getPostComments({required int postId});

  Future<List<Photos>> getAlbumPhotos({required int albumId});

  Future<bool> addComments({required Comment comment});
}
