import 'package:flutter/material.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';
import 'package:user_app/features/user_list/ui/character_user_screen/widgets/info_widget.dart';

class AddressInfo extends StatelessWidget {
  final Address address;

  const AddressInfo({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Working address:",
          style: TextThemes.headline2.copyWith(
            color: ColorPalette.black,
            fontSize: 18,
          ),
        ),
        InfoWidget(
          keyText: 'city:',
          valueText: address.city!,
        ),
        InfoWidget(
          keyText: 'street:',
          valueText: address.street!,
        ),
        InfoWidget(
          keyText: 'zipCode:: ',
          valueText: address.zipcode!,
        ),
      ],
    );
  }
}
