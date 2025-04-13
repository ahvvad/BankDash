import 'package:bankdash/dashboard/utils/app_images.dart';
import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:bankdash/dashboard/utils/styles.dart';
import 'package:bankdash/dashboard/widgets/titled_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveCard extends StatelessWidget {
  const ActiveCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TitledContainer(
      title: 'My Cards',
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF4C49ED),
              Color(0xFF0A06F4),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorsManager.borderSideColor, width: 1.5),
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 17),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Balance',
                            style: TextStyles.font11Regular.copyWith(
                              color: ColorsManager.white,
                            ),
                          ),
                          Text(
                            r'$5,756',
                            style: TextStyles.font18Medium.copyWith(
                              color: ColorsManager.white,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        height: 40,
                        AppImages.chipCardpng,
                        color: ColorsManager.white,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  const SizedBox(height: 23),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CARD HOLDER',
                            style: TextStyles.font11Regular.copyWith(
                              color: ColorsManager.white,
                            ),
                          ),
                          Text(
                            'Eddy Cusuma',
                            style: TextStyles.font18Medium.copyWith(
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
                            style: TextStyles.font11Regular.copyWith(
                              color: ColorsManager.white,
                            ),
                          ),
                          Text(
                            '12/12',
                            style: TextStyles.font18Medium.copyWith(
                              color: ColorsManager.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.transparent, thickness: 1.5),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 25, top: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3778 **** **** 1234',
                    style: TextStyles.font18Medium.copyWith(
                      color: ColorsManager.white,
                    ),
                  ),
                  SvgPicture.asset(
                    AppImages.masterCard,
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
      ),
    );
  }
}

// -----------------------------------------------

class InactiveCard extends StatelessWidget {
  const InactiveCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TitledContainer(
      title: 'See All',
      columnAlignment: CrossAxisAlignment.end,
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorsManager.borderSideColor, width: 1.5),
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 17),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Balance',
                            style: TextStyles.font11Regular.copyWith(
                              color: ColorsManager.secondaryTxtColor,
                            ),
                          ),
                          Text(
                            r'$5,756',
                            style: TextStyles.font18Medium.copyWith(
                              color: ColorsManager.primaryTxtColor,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        height: 40,
                        AppImages.chipCardpng,
                        color: ColorsManager.primaryTxtColor,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  const SizedBox(height: 23),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CARD HOLDER',
                            style: TextStyles.font11Regular.copyWith(
                              color: ColorsManager.secondaryTxtColor,
                            ),
                          ),
                          Text(
                            'Eddy Cusuma',
                            style: TextStyles.font18Medium.copyWith(
                              color: ColorsManager.primaryTxtColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'VALID THRU',
                            style: TextStyles.font11Regular.copyWith(
                              color: ColorsManager.secondaryTxtColor,
                            ),
                          ),
                          Text(
                            '12/12',
                            style: TextStyles.font18Medium.copyWith(
                              color: ColorsManager.primaryTxtColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(color: ColorsManager.borderSideColor, thickness: 1.5),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 25, top: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3778 **** **** 1234',
                    style: TextStyles.font18Medium.copyWith(
                      color: ColorsManager.primaryTxtColor,
                    ),
                  ),
                  SvgPicture.asset(
                    AppImages.masterCard,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
