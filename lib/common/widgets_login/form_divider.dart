import 'package:epotata/utils/constants/palette.dart';
import 'package:flutter/material.dart';


class EDivider extends StatelessWidget {
  const EDivider({
    super.key,
    required this.dark,
    required this.dividerText,
  });

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? Palette.darkGrey : Palette.lightGrey,
            thickness: 1,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(
          child: Divider(
            color: dark ? Palette.darkGrey : Palette.lightGrey,
            thickness: 1,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}