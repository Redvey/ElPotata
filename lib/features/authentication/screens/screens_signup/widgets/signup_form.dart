import 'package:epotata/features/authentication/screens/screens_signup/verify_email.dart';
import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';



class ESignupForm extends StatelessWidget {
  const ESignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark= EHelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: ETexts.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                SizedBox(
                  width: TSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: ETexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: ETexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),

            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: ETexts.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),

            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///Phone Number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: ETexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call)),
            ),

            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///Password
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: ETexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),

            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///Terms and Condition check box
            Row(
              children: [
                SizedBox(child: Checkbox(value: true, onChanged: (value){})),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(text: ETexts.iAgreeTo,
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: '${ETexts.privacyPolicy} ',
                              style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark? Palette.white:Palette.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark?Palette.white:Palette.primary,
                              )),
                          TextSpan(text: '${ETexts.and} ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: '${ETexts.termsOfUse} ',
                              style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark? Palette.white:Palette.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark?Palette.white:Palette.primary,
                              )),
                        ]
                    )
                )
              ],
            ),

            SizedBox(height: TSizes.spaceBtwSections,),
            ///SignupButon
            SizedBox(width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(ETexts.createAccount),
              ),)
          ],
        ));
  }
}
