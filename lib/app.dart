import 'package:epotata/features/authentication/screens/screens_onboarding/onboarding.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:epotata/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


class ElPotata extends StatelessWidget {
  const ElPotata({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: ETexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: OnBoardingScreen(),
    );
  }
}
