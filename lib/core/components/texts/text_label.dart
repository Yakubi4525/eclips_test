import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';

class CustomTextWidget extends StatelessWidget {
  final String textValue;

  const CustomTextWidget({Key? key,required this.textValue}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      textValue,
      style: TextStyle(
        color: ColorPalette.black,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.start,
    ),
  );
  }
}
