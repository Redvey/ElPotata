import 'package:epotata/common/styles/spacing_styles.dart';
import 'package:epotata/common/widgets_login/footer_icons.dart';
import 'package:epotata/common/widgets_login/form_divider.dart';
import 'package:epotata/common/widgets_login/login_form.dart';
import 'package:epotata/common/widgets_login/login_header.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo,title,subtitle
              LogoTitleSection(dark: dark),

              ///Form
              SignInCreate(),

              ///Divider
              EDivider(dark: dark,dividerText: ETexts.orSignInWith,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///Footer
              FooterIcons()
            ],
          ),
        ),
      ),
    );
  }
}








