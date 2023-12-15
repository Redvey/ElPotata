import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FooterIcons extends StatelessWidget {
  const FooterIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Palette.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(EMages.google)),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Palette.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(EMages.facebook)),
          ),
        ),
      ],
    );
  }
}