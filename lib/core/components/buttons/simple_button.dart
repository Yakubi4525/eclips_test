import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';

class SimpleButton extends StatelessWidget {
  final String name;
  final Function() function;

  const SimpleButton({Key? key, required this.name,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return CupertinoButton(
      onPressed: function,
      child: Container(
        width: _size.width,
        height: 44,
        decoration: BoxDecoration(
            color: ColorPalette.mainColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: ColorPalette.mainColor,
              width: 2.0,
            )),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextThemes.headline2.copyWith(color: ColorPalette.white),
          ),
        ),
      ),
    );
    
  }
}
