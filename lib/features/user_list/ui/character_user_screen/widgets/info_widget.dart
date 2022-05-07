import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';

class InfoWidget extends StatelessWidget {
  final String keyText;
  final String valueText;

  const InfoWidget({Key? key, required this.keyText, required this.valueText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            keyText,
            style: TextThemes.headline.copyWith(
              color: ColorPalette.darkGreyColor,
            ),
          ),
          Text(
            valueText,
            style: TextThemes.headline2.copyWith(
              color: ColorPalette.black,
            ),
          ),
        ],
      ),
    );
  }
}
