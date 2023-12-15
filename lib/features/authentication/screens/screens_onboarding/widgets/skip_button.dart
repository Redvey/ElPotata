import 'package:epotata/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/device/device_utility.dart';
import 'package:flutter/material.dart';



class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: EDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: ()=> OnBoardingController.instance.skipPage(),
          child: Text("Skip"),));
  }
}
