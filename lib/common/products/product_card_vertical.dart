import 'package:epotata/common/widgets/texts/e_brand_title_with_verified_text_icon.dart';
import 'package:epotata/common/styles/shadows.dart';
import 'package:epotata/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:epotata/common/widgets/icons/e_circular_icons.dart';
import 'package:epotata/common/widgets/images/e_rounded_image.dart';
import 'package:epotata/common/widgets/texts/price_texts.dart';
import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/texts/product_title_texts.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? Palette.darkerGrey : Palette.white,
        ),
        child: Column(
          children: [
            ///Thumbnail,wishlist Button,discount tag
            CircularCont(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? Palette.dark : Palette.light,
              child: Stack(
                children: [
                  ///Thumbnai Image
                  ERoundedImage(
                    imageUrl: EMages.productImage1,
                    applyImageRadius: true,
                  ),

                  ///Sale Tage
                  Positioned(
                    top: 12,
                    child: CircularCont(
                      radius: TSizes.sm,
                      backgroundColor: Palette.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Palette.black),
                      ),
                    ),
                  ),

                  ///FavIcon
                  Positioned(
                      top: 0,
                      right: 0,
                      child: const ECircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
             SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),

            ///Details
            Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleText(
                      title: 'Green Nike Air Shoes',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems / 2,
                    ),
                    EBrandTitleWithVerifiedIcon(title: "Nike",),
                    // add spacer to keep height of each box same in case 1 or 2 lines of heading


                  ],
                )),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: EProductPriceText(price: '35',),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Palette.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(
                              TSizes.productImageRadius))),
                  child: SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                          child: const Icon(
                            Iconsax.add,
                            color: Palette.white,
                          ))),
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}




