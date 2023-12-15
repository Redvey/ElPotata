import 'package:epotata/common/success_screen.dart';
import 'package:epotata/features/authentication/screens/screens_login/login.dart';
import 'package:epotata/utils/constants/image_strings.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/constants/text_strings.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Center(
                child: Image(image: AssetImage(EMages.deliveredEmailIllustration),
                width: EHelperFunctions.screenWidth()*0.6,),
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Title Subtitle
              Text(ETexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(ETexts.confirmEmail, style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(ETexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=> Get.to(()=>  SuccessScreen(image: EMages.staticSuccessIllustration,
                  title: ETexts.yourAccountCreatedTitle, subtitle: ETexts.yourAccountCreatedSubTitle,onPressed: ()=>Get.to(()=>  LoginScreen()),)),
                  child: const Text(ETexts.tContinue),
                ),


              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text(ETexts.resendEmail),
                ),


              ),

              const SizedBox(height: TSizes.spaceBtwSections,),

            ],
          ),),
      ),
    );
  }
}
