import 'package:epotata/common/widgets_login/footer_icons.dart';
import 'package:epotata/common/widgets_login/form_divider.dart';
import 'package:epotata/features/authentication/screens/screens_signup/widgets/signup_form.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(
                ETexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Form
              ESignupForm(),


              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Divider
              EDivider(dark: dark,dividerText: ETexts.orSignUpWith,),


              const SizedBox(height: TSizes.spaceBtwSections,),


              ///Social Buttons
              const FooterIcons(),
            ],
          ),
        ),
      ),
    );
  }
}

