import 'package:flutter/material.dart';

class Dimensions {
  static double screenWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

  static double statusBarHeight(BuildContext context) =>
    MediaQuery.of(context).padding.top;

  static double appBarHeight(BuildContext context) =>
    kToolbarHeight;
  
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;

  static const webScreenSize = 800.0;
  

}
