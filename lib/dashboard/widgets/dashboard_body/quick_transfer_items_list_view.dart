import 'package:bankdash/dashboard/models/quick_transfer_model.dart';
import 'package:bankdash/dashboard/utils/app_images.dart';
import 'package:bankdash/dashboard/utils/app_message.dart';
import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:bankdash/dashboard/widgets/dashboard_body/quick_transfer_items.dart';
import 'package:flutter/material.dart';

class QuickTransferItemsListView extends StatelessWidget {
  const QuickTransferItemsListView({super.key});

  static List items = [
    QuickTransferModel(
      image: AppImages.user2,
      name: 'Livia Bator',
      jobTitle: 'CEO',
    ),
    QuickTransferModel(
      image: AppImages.user3,
      name: 'Randy Press',
      jobTitle: 'Director',
    ),
    QuickTransferModel(
      image: AppImages.user4,
      name: 'Workman',
      jobTitle: 'Designer',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: items
              .map((e) => QuickTransferItems(
                    quickTransferModel: e,
                  ))
              .toList(),
        ),
        quickTransferSeeAllBotton(() => CustomToast.showFeatureInDevelopment())
      ],
    );
  }

  GestureDetector quickTransferSeeAllBotton(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                //? color: Colors.grey.shade200 the best one
                color: Colors.grey.shade200,
                offset: const Offset(4, 4),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ]),
        child: const Icon(
          size: 20,
          Icons.arrow_forward_ios,
          color: ColorsManager.secondaryTxtColor,
        ),
      ),
    );
  }
}
