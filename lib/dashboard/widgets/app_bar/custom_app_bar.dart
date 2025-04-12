import 'package:bankdash/dashboard/utils/app_images.dart';
import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:bankdash/dashboard/utils/styles.dart';
import 'package:bankdash/dashboard/widgets/app_bar/rounded_icons_container.dart';
import 'package:bankdash/dashboard/widgets/app_bar/rounded_image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 80,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFFE6EFF5), width: 1.5),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Overview',
                      style: TextStyles.font28SemiBold.copyWith(
                        color: ColorsManager.primaryTxtColor,
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomSearshBar(),
                      SizedBox(width: 30),
                      RoundedIconsContainer(
                        svgImage: AppImages.settings,
                      ),
                      SizedBox(width: 30),
                      RoundedIconsContainer(
                        svgImage: AppImages.notification,
                      ),
                      SizedBox(width: 30),
                      RoundedImageContainer(image: AppImages.user1)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomSearshBar extends StatelessWidget {
  const CustomSearshBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        style: TextStyles.font15Regular.copyWith(
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
          hintStyle: TextStyles.font15Regular.copyWith(
            color: ColorsManager.secondaryTxtColor,
          ),
        ),
      ),
    );
  }
}
