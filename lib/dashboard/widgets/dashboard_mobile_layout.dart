import 'package:bankdash/dashboard/widgets/dashboard_body/balance_history.dart';
import 'package:bankdash/dashboard/widgets/dashboard_body/expense_statistics.dart';
import 'package:bankdash/dashboard/widgets/dashboard_body/quick_transfer.dart';
import 'package:bankdash/dashboard/widgets/dashboard_body/recent_transaction.dart';
import 'package:bankdash/dashboard/widgets/dashboard_body/seclected_card_section.dart';
import 'package:bankdash/dashboard/widgets/dashboard_body/weekly_activity.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [SelectedCardSection()],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [RecentTransaction()],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [WeeklyActivity()],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [ExpenseStatistics()],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [QuickTransfer()],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [BalanceHistory()],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
