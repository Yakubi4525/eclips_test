import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';
import 'package:user_app/features/user_list/ui/character_user_screen/widgets/info_widget.dart';

class CompanyInfo extends StatelessWidget {
  final Company company;
  const CompanyInfo({Key? key, required this.company}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Working company:",
          style: TextThemes.headline2.copyWith(
            color: ColorPalette.black,
            fontSize: 18,
          ),
        ),
        InfoWidget(
          keyText: 'name:',
          valueText: company.name!,
        ),
        InfoWidget(
          keyText: 'bs:',
          valueText: company.bs!,
        ),
        InfoWidget(
          keyText: 'catchPhrase: ',
          valueText: company.catchPhrase!,
        ),
      ],
    );
  }
}
