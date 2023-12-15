import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';


class LogoTitleSection extends StatelessWidget {
  const LogoTitleSection({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
            height: 150,
            image: dark
                ? AssetImage(EMages.lightAppLogo)
                : AssetImage(EMages.darkAppLogo)),
        Text(
          ETexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          ETexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}