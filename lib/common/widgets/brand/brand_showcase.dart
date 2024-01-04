import 'package:epotata/common/widgets/brand/brand_card.dart';
import 'package:epotata/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBrandShowCase extends StatelessWidget {
  const EBrandShowCase({
    super.key, required this.images,
  });

  final List<String>images;

  @override
  Widget build(BuildContext context) {
    return CircularCont(
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColor: Palette.darkGrey,
      margin:
      const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        children: [
          ///Brand with procut count
          const EBrandCard(
            showBorder: false,
          ),

          ///Brand top 3 product images
          Row(
              children:
              images.map((image) => brandTopProductImageWidget(image, context)).toList()

          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,context) {
    return Expanded(
      child: CircularCont(
        height: 100,
        backgroundColor:
        EHelperFunctions.isDarkMode(context)
            ? Palette.darkGrey
            : Palette.light,
        margin:
        const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child:  Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}