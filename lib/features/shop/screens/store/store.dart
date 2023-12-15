import 'package:epotata/common/widgets/appbar/appbar.dart';
import 'package:epotata/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:epotata/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:epotata/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:epotata/common/widgets/texts/section_heading.dart';
import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppStore extends StatelessWidget {
  const AppStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ECartCounterIcon(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: EHelperFunctions.isDarkMode(context)? Palette.black:Palette.white,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ///searchbox
                    SizedBox(height: TSizes.spaceBtwItems,),
                    ESearchBox(text: 'Search in Store',showBorder: true,showBackgroundColor: false,padding: EdgeInsets.zero,),
                    SizedBox(height: TSizes.spaceBtwSections,),

                    ///Featured Headings
                    ESectionHeading(title: 'Featured Brands',onPressed: (){},),
                    SizedBox(height: TSizes.spaceBtwItems/1.5,),

                    CircularCont(
                      padding: const EdgeInsets.all(TSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          ///Icon
                          Container(
                            width: 56,
                            height: 56,
                            padding: const EdgeInsets.all(TSizes.sm),
                            decoration: BoxDecoration(
                              color: EHelperFunctions.isDarkMode(context)? Palette.black: Palette.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image(
                              image: AssetImage(EMages.clothIcon),
                              color: EHelperFunctions.isDarkMode(context)? Palette.white: Palette.black,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),),
              ),

            ];
          },
          body: Container()),
    );
  }
}
