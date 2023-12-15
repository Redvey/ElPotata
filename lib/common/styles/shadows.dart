import 'package:epotata/utils/constants/palette.dart';
import 'package:flutter/material.dart';


class EShadowStyle{
  static final verticalProductShadow =BoxShadow(
    color: Palette.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow =BoxShadow(
    color: Palette.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

}