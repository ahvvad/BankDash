import 'package:bankdash/dashboard/widgets/dashboard_body/adaptive_layout_widget.dart';
import 'package:bankdash/dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:bankdash/dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:bankdash/dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
