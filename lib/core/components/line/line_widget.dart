import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      color: ColorPalette.darkGreyColor.withOpacity(0.3),
    );
  }
}
