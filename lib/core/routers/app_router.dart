import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/features/user_list/domain/entetties/album.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';
import 'package:user_app/features/user_list/ui/character_user_screen/pages/character_user_screen.dart';
import 'package:user_app/features/user_list/ui/user_albums_screen/pages/user_albums.dart';
import 'package:user_app/features/user_list/ui/user_posts_screen/pages/user_posts.dart';
import 'package:user_app/features/user_list/ui/users_screen/pages/users_screen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const UsersScreen());
      case '/character_user':
        if (args is User) {
          return MaterialPageRoute(
            builder: (_) => CharacterUserScreen(
              user: args,
            ),
          );
        }
        return _errorRoute();
      case '/user_posts':
        if (args is List<Post>) {
          return MaterialPageRoute(
            builder: (_) => UserPostScreen(
              userPosts: args,
            ),
          );
        }
        return _errorRoute();
      case '/user_albums':
        if (args is List<Album>) {
          return MaterialPageRoute(
            builder: (_) => UserAlbumsScreen(
              userAlbums: args,
            ),
          );
        }
        return _errorRoute();
      // case '/character_album':
      //   if (args is Album) {
      //     return MaterialPageRoute(
      //       builder: (_) => CharacterAlbumScreen(
      //         album: args,
      //       ),
      //     );
      //   }
      //   return _errorRoute();
      // case '/character_post':
      //   if (args is Post) {
      //     return MaterialPageRoute(
      //       builder: (_) => CharacterPostScreen(
      //         post: args,
      //       ),
      //     );
      //   }
      //   return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error Page'),
            backgroundColor: ColorPalette.white,
            centerTitle: true,
          ),
          body: const Center(
            child: Text('Page not found'),
          ),
        );
      },
    );
  }
}
