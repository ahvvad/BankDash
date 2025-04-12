
import 'package:bankdash/dashboard/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar()
      ],
    );
  }
}
