import 'package:bankdash/dashboard/utils/font_weight_helper.dart';
import 'package:bankdash/dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle font28SemiBold(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.semiBold,
      fontSize: getResponsiveFontSize(context, fontSize: 28),
    );
  }

  static TextStyle font22SemiBold(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.semiBold,
      fontSize: getResponsiveFontSize(context, fontSize: 22),
    );
  }

  static TextStyle font20SemiBold(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.semiBold,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
    );
  }

  static TextStyle font18SemiBold(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.semiBold,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
    );
  }

  static TextStyle font13SemiBold(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.semiBold,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
    );
  }

  static TextStyle font11SemiBold(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.semiBold,
      fontSize: getResponsiveFontSize(context, fontSize: 11),
    );
  }

  // Medium Font
  static TextStyle font11Medium(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: getResponsiveFontSize(context, fontSize: 11),
    );
  }

  static TextStyle font13Medium(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
    );
  }

  static TextStyle font18Medium(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
    );
  }

  static TextStyle font16Medium(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
    );
  }

  static TextStyle font15Medium(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: getResponsiveFontSize(context, fontSize: 15),
    );
  }

  // Regular Font
  static TextStyle font16Regular(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.regular,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
    );
  }

  static TextStyle font15Regular(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.regular,
      fontSize: getResponsiveFontSize(context, fontSize: 15),
    );
  }

  static TextStyle font11Regular(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.regular,
      fontSize: getResponsiveFontSize(context, fontSize: 11),
    );
  }

  // Light Font
  static TextStyle font13light(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeightHelper.light,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
    );
  }
}

// scaleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 1;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
