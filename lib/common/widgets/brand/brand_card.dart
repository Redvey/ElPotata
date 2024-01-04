import 'package:epotata/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:epotata/common/widgets/images/e_circular_image.dart';
import 'package:epotata/common/widgets/texts/e_brand_title_with_verified_text_icon.dart';
import 'package:epotata/utils/constants/enums.dart';
import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class EBrandCard extends StatelessWidget {
  const EBrandCard({
    super.key,
    this.showBorder = true,
  });

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CircularCont(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///Icon
            Flexible(
              child: ECircularImage(
                image: EMages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: EHelperFunctions.isDarkMode(context)
                    ? Palette.white
                    : Palette.black,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),

            ///--Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const EBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}