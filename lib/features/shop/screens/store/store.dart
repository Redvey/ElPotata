import 'package:epotata/common/widgets/appbar/appbar.dart';
import 'package:epotata/common/widgets/appbar/tabbar.dart';
import 'package:epotata/common/widgets/brand/brand_card.dart';
import 'package:epotata/common/widgets/brand/brand_showcase.dart';
import 'package:epotata/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:epotata/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:epotata/common/widgets/images/e_circular_image.dart';
import 'package:epotata/common/widgets/layouts/grid_layout.dart';
import 'package:epotata/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:epotata/common/widgets/texts/e_brand_title_with_verified_text_icon.dart';
import 'package:epotata/common/widgets/texts/section_heading.dart';
import 'package:epotata/features/shop/screens/store/widgets/category_tab.dart';
import 'package:epotata/utils/constants/enums.dart';
import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/device/device_utility.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppStore extends StatelessWidget {
  const AppStore({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
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
                  backgroundColor: EHelperFunctions.isDarkMode(context)
                      ? Palette.black
                      : Palette.white,
                  expandedHeight: 440,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ///searchbox
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        ESearchBox(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackgroundColor: false,
                          padding: EdgeInsets.zero,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        ///Featured Headings
                        ESectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),
                        EGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return EBrandCard();
                            })
                      ],
                    ),
                  ),

                  ///Tabs
                  bottom: const ETabBar(
                    tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                ECategoryTab(),
                ECategoryTab(),
                ECategoryTab(),
                ECategoryTab(),
                ECategoryTab(),
              ],
            )),
      ),
    );
  }
}






