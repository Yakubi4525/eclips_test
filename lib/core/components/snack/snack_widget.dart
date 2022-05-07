import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';

final SnackBar noInternetSnackbar = SnackBar(
  backgroundColor: ColorPalette.black,
  elevation: 2,
  content: const Text(
    'Отсутсвует подключение к сети :( ',
  ),
  action: SnackBarAction(
    label: 'Скрыть',
    textColor: ColorPalette.mainColor,
    onPressed: () {},
  ),
);

final SnackBar wrongCodeSnackBar = SnackBar(
  backgroundColor: ColorPalette.black,
  elevation: 2,
  content: const Text(
    'Неправильный код :( ',
  ),
  action: SnackBarAction(
    label: 'Скрыть',
    textColor: ColorPalette.mainColor,
    onPressed: () {},
  ),
);