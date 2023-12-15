
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';




class ECartCounterIcon extends StatelessWidget {

  const ECartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark= EHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon:  Icon(Iconsax.shopping_bag,color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,height: 18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: dark? Palette.white:Palette.dark,
            ),
            child: Center(
              child: Text('2',
                style: Theme.of(context).textTheme.labelLarge!.apply(color:dark? Palette.dark:Palette.white,fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}