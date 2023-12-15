import 'package:epotata/utils/constants/sizes.dart';
import 'package:epotata/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


///Content
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.subtitle,
    required this.title,
    required this.image,
  });

  final String image,title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: EHelperFunctions.screenWidth()*0.6,
              height: EHelperFunctions.screenHeight()*0.6,
              image: AssetImage(image)),
          Text(title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,),

        ],
      ),
    );
  }
}
