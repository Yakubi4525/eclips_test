import 'package:flutter/material.dart';
import 'package:user_app/features/user_list/domain/entetties/photo.dart';
import 'package:user_app/features/user_list/ui/character_album_screen/widgets/slider_item.dart';

class SliderViewWidget extends StatelessWidget {
  final List<Photos> photoList;

  const SliderViewWidget({Key? key,required  this.photoList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: photoList.length,
      itemBuilder: (context, index) {
        return SliderItem(
          photo: photoList[index],
        );
      },
    );
  }
}
