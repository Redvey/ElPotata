import 'package:epotata/common/widgets/appbar/appbar.dart';
import 'package:epotata/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';


class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ETexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Palette.grey),
          ),
          Text(
            ETexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Palette.white),
          ),
        ],
      ),
      actions: [
        ECartCounterIcon(onPressed: () {  }, iconColor: Palette.white,)
      ],
    );
  }
}