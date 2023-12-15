import 'package:epotata/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/device/device_utility.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';






///Floating Action Button
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark= EHelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,bottom: EDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: ()=> OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(shape: CircleBorder(),
                backgroundColor: dark? Palette.primary: Colors.black),
            child: Icon(Iconsax.arrow_right)));
  }
}
