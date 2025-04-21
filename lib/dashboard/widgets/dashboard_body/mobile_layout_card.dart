import 'package:bankdash/dashboard/utils/app_images.dart';
import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:bankdash/dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileLayoutCard extends StatelessWidget {
  const MobileLayoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double svgIconSize = (screenWidth * .5).clamp(15.0, 25.0);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildCard(context, svgIconSize),
          const SizedBox(width: 20),
          _buildCard(context, svgIconSize),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, double svgIconSize) {
    return Container(
      width: 300,
      height: 220,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF4C49ED), Color(0xFF0A06F4)],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: ColorsManager.borderSideColor,
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 17),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balance',
                      style: TextStyles.font11Regular(context).copyWith(
                        color: ColorsManager.white,
                      ),
                    ),
                    Text(
                      r'$5,756',
                      style: TextStyles.font18Medium(context).copyWith(
                        color: ColorsManager.white,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  AppImages.chipCardpng,
                  height: svgIconSize,
                  width: svgIconSize,
                  color: ColorsManager.white,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(height: 23),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CARD HOLDER',
                      style: TextStyles.font11Regular(context).copyWith(
                        color: ColorsManager.white,
                      ),
                    ),
                    Text(
                      'Eddy Cusuma',
                      style: TextStyles.font18Medium(context).copyWith(
                        color: ColorsManager.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VALID THRU',
                      style: TextStyles.font11Regular(context).copyWith(
                        color: ColorsManager.white,
                      ),
                    ),
                    Text(
                      '12/12',
                      style: TextStyles.font18Medium(context).copyWith(
                        color: ColorsManager.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: ColorsManager.borderSideColor,
            thickness: 1,
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '3778 **** **** 1234',
                  style: TextStyles.font18Medium(context).copyWith(
                    color: ColorsManager.white,
                  ),
                ),
                SvgPicture.asset(
                  AppImages.masterCard,
                  height: svgIconSize,
                  width: svgIconSize,
                  colorFilter: const ColorFilter.mode(
                    ColorsManager.white,
                    BlendMode.srcIn,
                  ),
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
