import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return GoogleFonts.montserrat(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  }
  return width / 1500;
}
