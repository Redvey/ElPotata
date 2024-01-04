import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ECircularImage extends StatelessWidget {
  const ECircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage= false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: EHelperFunctions.isDarkMode(context)
            ? Palette.black
            : Palette.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage? NetworkImage(image):AssetImage(image) as ImageProvider,
        color: EHelperFunctions.isDarkMode(context)
            ? Palette.white
            : Palette.black,
      ),
    );
  }
}
