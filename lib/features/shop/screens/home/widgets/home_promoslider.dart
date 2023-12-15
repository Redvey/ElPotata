import 'package:carousel_slider/carousel_slider.dart';
import 'package:epotata/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:epotata/common/widgets/images/e_rounded_image.dart';
import 'package:epotata/features/shop/controllers/home_controller.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EPromoSilder extends StatelessWidget {
  const EPromoSilder({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
            onPageChanged: (index, _)=> controller.updatePageIndicator(index)
          ),
          // items: [
          //   ERoundedImage(imageUrl: EMages.promoBanner1,),
          //   ERoundedImage(imageUrl: EMages.promoBanner2,),
          //   ERoundedImage(imageUrl: EMages.promoBanner3,),
          //
          // ],
          items: banners.map((url)=>  ERoundedImage(imageUrl: url)).toList(),
        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        Center(
          child: Obx(
            ()=> Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i=0;i<banners.length;i++)
                   CircularCont(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value==i ? Palette.primary: Palette.grey,),
              ],
            ),
          ),
        )
      ],
    );
  }
}