import 'package:epotata/utils/constants/palette.dart';
import 'package:epotata/utils/constants/sizes.dart';
import 'package:flutter/material.dart';



class CircularCont extends StatelessWidget {
  const CircularCont({
    Key? key,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.child,
    this.backgroundColor = Palette.white,
    this.radius = TSizes.cardRadiusLg,
    this.borderColor = Palette.borderPrimary,
    this.showBorder = false,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final Color backgroundColor, borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
