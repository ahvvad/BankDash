import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:flutter/material.dart';

class RoundedImageContainer extends StatelessWidget {
  const RoundedImageContainer({
    super.key,
    this.height,
    this.width,
    required this.image,
  });
  final double? height;
  final double? width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: width ?? 40,
      decoration: BoxDecoration(
        color: ColorsManager.secondaryTxtColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
