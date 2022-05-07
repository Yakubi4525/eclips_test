import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';
import 'package:user_app/features/user_list/domain/entetties/photo.dart';

class SliderItem extends StatelessWidget {
  final Photos photo;

  const SliderItem({Key? key,required  this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              shape: BoxShape.rectangle,
              image:  DecorationImage(
                  fit: BoxFit.cover,
                  image: photo.url == null
                      ? const NetworkImage(
                          "https://yt3.ggpht.com/a/AATXAJwssbfpB96zdJJl6r6o162sSZEdQvmyukUe4A=s900-c-k-c0xffffffff-no-rj-mo")
                      : NetworkImage(photo.url!)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [
                    0.1,
                    0.9
                  ],
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.white.withOpacity(0.0)
                  ]),
            ),
          ),
          Positioned(
            bottom: 16.0,
            child: Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              width: 250.0,
              child: Column(
                children: <Widget>[
                  Text(
                    photo.title!,
                    style: TextThemes.headline2.copyWith(color: ColorPalette.white)
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
