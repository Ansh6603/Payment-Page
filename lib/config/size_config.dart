import 'package:flutter/material.dart';

class SizeConfig {
  static double height = 0;
  static double width = 0;
  static double blockSizeHorizontal = 0;
  static double blockSizeVertical = 0;

  static init(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    height = mediaQueryData.size.height;
    width = mediaQueryData.size.width;
    blockSizeHorizontal = width / 100;
    blockSizeVertical = height / 100;
  }
}
