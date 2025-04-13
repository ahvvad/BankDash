import 'package:bankdash/dashboard/widgets/dashboard_body/recent_transaction_model_list_view.dart';
import 'package:bankdash/dashboard/widgets/dashboard_body/titled_container.dart';
import 'package:flutter/material.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TitledContainer(
        title: 'Recent Transaction',
        child: Container(
          height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            children: [
              RecentTransactionModelListView(),
            ],
          ),
        ),
      ),
    );
  }
}
