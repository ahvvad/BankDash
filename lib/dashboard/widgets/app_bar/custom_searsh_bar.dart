
import 'package:bankdash/dashboard/utils/app_images.dart';
import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:bankdash/dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearshBar extends StatelessWidget {
  const CustomSearshBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        style: TextStyles.font15Regular(context).copyWith(
          color: ColorsManager.mainBlue,
        ),
        cursorColor: ColorsManager.mainBlue,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorsManager.bgColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(color: ColorsManager.bgColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(color: ColorsManager.bgColor),
          ),
          prefixIcon: SvgPicture.asset(
            AppImages.search,
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
          ),
          hintText: 'Search for something',
          hintStyle: TextStyles.font15Regular(context).copyWith(
            color: ColorsManager.secondaryTxtColor,
          ),
        ),
      ),
    );
  }
}
