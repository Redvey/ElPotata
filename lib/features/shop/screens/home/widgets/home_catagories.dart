import 'package:epotata/common/widgets/image_text-widgets/vertical_image_text.dart';
import 'package:epotata/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';


class EHomeCatagories extends StatelessWidget {
  const EHomeCatagories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return EverticalImageText(image: EMages.sportIcon,title: 'Shoes',);
          }),
    );
  }
}