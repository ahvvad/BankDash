
import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoundedIconsContainer extends StatelessWidget {
  const RoundedIconsContainer({
    super.key,
    this.height,
    this.width,
    this.containerColor,
    required this.svgImage,
  });
  final double? height;
  final double? width;
  final Color? containerColor;
  final String svgImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: width ?? 40,
      decoration: BoxDecoration(
        color: containerColor ?? ColorsManager.bgColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: SvgPicture.asset(
        svgImage,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
