import 'package:epotata/utils/constants/enums.dart';
import 'package:flutter/material.dart';


class EBrandTitleText extends StatelessWidget {
  const EBrandTitleText({
    super.key,
    required this.title,
    this.textAlign = TextAlign.center,
    this.maxLines = 1,
    this.brandTextSizes = TextSizes.small,
    this.color,
  });

  final String title;
  final TextAlign? textAlign;
  final int maxLines;
  final TextSizes brandTextSizes;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: brandTextSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSizes == TextSizes.medium
          ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          : brandTextSizes == TextSizes.large
          ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}