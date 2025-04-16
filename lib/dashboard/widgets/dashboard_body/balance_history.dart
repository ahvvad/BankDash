import 'package:bankdash/dashboard/widgets/dashboard_body/titled_container.dart';
import 'package:flutter/material.dart';

class BalanceHistory extends StatelessWidget {
  const BalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: TitledContainer(
        title: 'Balance History',
        child: Container(
          height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(child: Text('Balance History')),
        ),
      ),
    );
  }
}
