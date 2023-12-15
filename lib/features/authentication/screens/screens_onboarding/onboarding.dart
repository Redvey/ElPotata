import 'package:epotata/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:epotata/features/authentication/screens/screens_onboarding/widgets/dotnavigation.dart';
import 'package:epotata/features/authentication/screens/screens_onboarding/widgets/onboarding_contents.dart';
import 'package:epotata/features/authentication/screens/screens_onboarding/widgets/next_button.dart';
import 'package:epotata/features/authentication/screens/screens_onboarding/widgets/skip_button.dart';
import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBoardingPage(
                  image: EMages.onBoardingImage1,
                  title: ETexts.onBoardingTitle1,
                  subtitle: ETexts.onBoardingSubTitle1,
                ),
                OnBoardingPage(
                  image: EMages.onBoardingImage2,
                  title: ETexts.onBoardingTitle2,
                  subtitle: ETexts.onBoardingSubTitle2,
                ),
                OnBoardingPage(
                  image: EMages.onBoardingImage3,
                  title: ETexts.onBoardingTitle3,
                  subtitle: ETexts.onBoardingSubTitle3,
                ),
              ]),

          ///skipbutton
          const OnBoardingSkip(),

          ///dot navigation smoothpage indicator
          OnBoardingDotNavigation(),

          ///Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
