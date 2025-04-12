import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomToast {
  static void showFeatureInDevelopment() {
    Fluttertoast.showToast(
      msg: "This feature is currently under development. Stay tuned.",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP_LEFT,
      backgroundColor: ColorsManager.mainBlue,
      textColor: Colors.white,
      fontSize: 16.0,
      fontAsset: GoogleFonts.inter().fontFamily,
    );
  }
}
