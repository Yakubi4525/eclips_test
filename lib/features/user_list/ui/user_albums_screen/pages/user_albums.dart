import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';
import 'package:user_app/features/user_list/domain/entetties/album.dart';
import 'package:user_app/features/user_list/ui/user_albums_screen/widgets/album_view.dart';


class UserAlbumsScreen extends StatelessWidget {
  final List<Album> userAlbums;
  const UserAlbumsScreen({Key? key, required this.userAlbums}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size _size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
                elevation: 0,

        centerTitle: true,
        backgroundColor: ColorPalette.white,
        title: Text(
          'All albums',
          style: TextThemes.headline2.copyWith(color: ColorPalette.black),
        ),
      ),
      body: SizedBox(
        height: _size.height,
        child: AlbumViewWidget(
          albumList: userAlbums, count: userAlbums.length, scrollController: ScrollController(),
        ),
      ),
    );
  }
}
