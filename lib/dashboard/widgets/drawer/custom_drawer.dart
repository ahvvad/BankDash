import 'package:bankdash/dashboard/utils/app_images.dart';
import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:bankdash/dashboard/widgets/drawer/drawer_items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: Color(0xFFE6EFF5), width: 1.5),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35.0, top: 30.0),
            child: SvgPicture.asset(AppImages.logo),
          ),
          const SizedBox(height: 10),
          const DrawerItemsListView()
        ],
      ),
    );
  }
}
