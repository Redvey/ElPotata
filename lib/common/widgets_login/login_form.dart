import 'package:epotata/common/bottomnavigationbar.dart';
import 'package:epotata/features/authentication/screens/screens_password/forget_password.dart';
import 'package:epotata/features/authentication/screens/screens_signup/signup.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignInCreate extends StatelessWidget {
  const SignInCreate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.personalcard),
              labelText: ETexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: ETexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          ///Remember me
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(ETexts.rememberMe)
                ],
              ),
              TextButton(onPressed: () => Get.to(()=> const ForgetPassword()), child: Text(ETexts.forgetPassword)),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          ///signin button
           SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=> Get.to(()=> const BottomNavBar()),
              child: const Text(ETexts.signIn),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          ///create account button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()),
                  child: Text(ETexts.createAccount))),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          )
        ],
      ),
    ));
  }
}
