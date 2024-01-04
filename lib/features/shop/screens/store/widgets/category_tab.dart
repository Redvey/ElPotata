import 'package:epotata/common/products/product_card_vertical.dart';
import 'package:epotata/common/widgets/brand/brand_showcase.dart';
import 'package:epotata/common/widgets/layouts/grid_layout.dart';
import 'package:epotata/common/widgets/texts/section_heading.dart';
import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              EBrandShowCase(images: [
                EMages.productImage1,
                EMages.productImage2,
                EMages.productImage3,
              ],),
              EBrandShowCase(images: [
                EMages.productImage1,
                EMages.productImage2,
                EMages.productImage3,
              ],),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///Products
              ESectionHeading(title: 'You might like',showActionButton: true,onPressed: (){},),
              const SizedBox(height: TSizes.spaceBtwItems,),

              EGridLayout(itemCount: 4, itemBuilder: (_,index)=> const EProductCardVertical())
            ],
          ),
        )
      ],
    );
  }
}