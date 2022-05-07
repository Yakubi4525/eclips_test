import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_app/core/logger/logger_impl.dart';
import 'dart:convert';

import 'package:user_app/features/user_list/data/datasources/local/local_service.dart';
import 'package:user_app/features/user_list/domain/entetties/album.dart';
import 'package:user_app/features/user_list/domain/entetties/comment.dart';
import 'package:user_app/features/user_list/domain/entetties/photo.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';

@LazySingleton(as: LocalService)
class LocalServiceImpl extends LocalService {
  static const _keyAllUsers = 'users';
  static const _keyUsersPost = 'userPost';
  static const _keyUsersAlbum = 'userAlbum';
  static const _keyPostComment = 'postComment';
  static const _keyAlbumPhoto = 'albumPhoto';

  @override
  Future setAllusers(List<User> userList) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var list = userList.map((user) => jsonEncode(user)).toList();
    await preferences.setStringList(_keyAllUsers, list);
  }

  @override
  Future setUserPosts(
      {required List<Post> postList, required int userId}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    var list = postList.map((post) => jsonEncode(post)).toList();
    await preferences.setStringList(_keyUsersPost + userId.toString(), list);
    logger.d('Post saved succes');
  }

  @override
  Future setUserAlbums(
      {required List<Album> albumList, required int userId}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    var list = albumList.map((album) => jsonEncode(album)).toList();
    await preferences.setStringList(_keyUsersAlbum + userId.toString(), list);
  }

  @override
  Future setPostComments(
      {required List<Comment> commentList, required int postId}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var list = commentList.map((comment) => jsonEncode(comment)).toList();
    await preferences.setStringList(_keyPostComment + postId.toString(), list);
  }

  @override
  Future setLocalComment({required Comment comment}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    var list = await getPostComments(postId: comment.postId!);
    list.add(comment);
    var listString = list.map((comment) => jsonEncode(comment)).toList();
    await preferences.setStringList(
        _keyPostComment + comment.postId.toString(), listString);
  }

  @override
  Future setAlbumPhotos(
      {required List<Photos> photoLiist, required int albumId}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    var list = photoLiist.map((photo) => jsonEncode(photo)).toList();
    await preferences.setStringList(_keyAlbumPhoto + albumId.toString(), list);
  }

  @override
  Future<List<User>> getAllusers() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    // preferences = await SharedPreferences.getInstance();
    var stringList = preferences.getStringList(_keyAllUsers);
    if (stringList == null) {
      return [];
    }
    var list = stringList.map((user) => jsonDecode(user)).toList();

    List<User> userList = list.map((e) => User.fromJson(e)).toList();
    return userList;
  }

  @override
  Future<List<Post>> getUserPosts({required int userId}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences = await SharedPreferences.getInstance();
    var stringList =
        preferences.getStringList(_keyUsersPost + userId.toString());
    if (stringList != null) {
      var list = stringList.map((post) => jsonDecode(post)).toList();
      List<Post> postList = list.map((post) => Post.fromJson(post)).toList();
      return postList;
    } else {
      return [];
    }
  }

  @override
  Future<List<Album>> getUserAlbums({required int userId}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences = await SharedPreferences.getInstance();
    var stringList =
        preferences.getStringList(_keyUsersAlbum + userId.toString());
    if (stringList == null) {
      return [];
    } else {
      var list = stringList.map((user) => jsonDecode(user)).toList();
      List<Album> albumList =
          list.map((album) => Album.fromJson(album)).toList();
      return albumList;
    }
  }

  @override
  Future<List<Comment>> getPostComments({required int postId}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences = await SharedPreferences.getInstance();
    var stringList =
        preferences.getStringList(_keyPostComment + postId.toString());
    if (stringList == null) {
      return [];
    } else {
      var list = stringList.map((comment) => jsonDecode(comment)).toList();
      List<Comment> albumList =
          list.map((comment) => Comment.fromJson(comment)).toList();
      return albumList;
    }
  }

  @override
  Future<List<Photos>> getAlbumPhotos({required int albumId}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences = await SharedPreferences.getInstance();
    var stringList =
        preferences.getStringList(_keyUsersAlbum + albumId.toString());
    if (stringList == null) {
      return [];
    } else {
      var list = stringList.map((photo) => jsonDecode(photo)).toList();
      List<Photos> albumList =
          list.map((photo) => Photos.fromJson(photo)).toList();
      return albumList;
    }
  }
}
