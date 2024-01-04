import 'package:epotata/common/widgets/texts/e_brand_title_texts.dart';
import 'package:epotata/utils/constants/enums.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EBrandTitleWithVerifiedIcon extends StatelessWidget {
  const EBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines=1,
    this.textColor,
    this.iconColor,
    this.textAlign,
    this.brandTextSizes=TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: EBrandTitleText(
            title: title,
            textAlign: textAlign,
            maxLines: maxLines,
            color: textColor,
            brandTextSizes: brandTextSizes,
          ),
        ),
        SizedBox(
          width: TSizes.iconXs,
        ),
        Icon(
          Iconsax.verify5,
          color: Palette.primary,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
