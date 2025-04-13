import 'package:bankdash/dashboard/widgets/app_bar/custom_app_bar.dart';
import 'package:bankdash/dashboard/widgets/recent_transaction.dart';
import 'package:bankdash/dashboard/widgets/seclected_card_section.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  SelectedCardSection(),
                  SizedBox(width: 20),
                  RecentTransaction()
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
