import 'package:bankdash/dashboard/utils/app_images.dart';
import 'package:bankdash/dashboard/utils/app_message.dart';
import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:bankdash/dashboard/utils/styles.dart';
import 'package:bankdash/dashboard/widgets/app_bar/custom_searsh_bar.dart';
import 'package:bankdash/dashboard/widgets/app_bar/rounded_icons_container.dart';
import 'package:bankdash/dashboard/widgets/app_bar/rounded_image_container.dart';
import 'package:flutter/material.dart';

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
                bottom: BorderSide(color: ColorsManager.borderSideColor, width: 1.5),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomSearshBar(),
                      const SizedBox(width: 30),
                      RoundedIconsContainer(
                        onTap: () => CustomToast.showFeatureInDevelopment(),
                        svgImage: AppImages.settings,
                      ),
                      const SizedBox(width: 30),
                      RoundedIconsContainer(
                        onTap: () => CustomToast.showFeatureInDevelopment(),
                        svgImage: AppImages.notification,
                      ),
                      const SizedBox(width: 30),
                      RoundedImageContainer(
                          onTap: () => CustomToast.showFeatureInDevelopment(),
                          image: AppImages.user1)
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
