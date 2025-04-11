import 'package:bankdash/dashboard/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 4,
          child: Container(),
        ),
      ],
    );
  }
}
