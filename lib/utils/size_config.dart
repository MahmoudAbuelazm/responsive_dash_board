

import 'package:flutter/material.dart';

class SizeConfig {
  static double desktop = 1200;
  static double tablet = 800;

  // static late double screenWidth, screenHeight;

  // static init(BuildContext context) {
  //   screenWidth = MediaQuery.sizeOf(context).width;
  //   screenHeight = MediaQuery.sizeOf(context).height;
  // }
}



double getResponsiveSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  }
  return width / 1000;
}