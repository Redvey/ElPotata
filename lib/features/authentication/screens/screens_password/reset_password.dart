import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///Image
            Center(
              child: Image(
                image: AssetImage(EMages.deliveredEmailIllustration),
                width: EHelperFunctions.screenWidth() * 0.6,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///Title Subtitle
            Text(
              ETexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              ETexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: const Text(ETexts.done),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){},
                child: const Text(ETexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
