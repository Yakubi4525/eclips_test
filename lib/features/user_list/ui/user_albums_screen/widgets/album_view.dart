import 'package:flutter/material.dart';
import 'package:user_app/features/user_list/domain/entetties/album.dart';
import 'package:user_app/features/user_list/ui/user_albums_screen/widgets/album_item.dart';

class AlbumViewWidget extends StatelessWidget {
  final List<Album> albumList;
  final ScrollController scrollController;
  final int count;

  const AlbumViewWidget(
      {Key? key,
      required this.albumList,
      required this.scrollController,
      required this.count})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: count,
      itemBuilder: (context, index) {
        return ALbumItem(
          album: albumList[index],
        );
      },
    );
  }
}
