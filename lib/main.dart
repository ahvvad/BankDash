import 'package:bankdash/dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BankDash());
}

class BankDash extends StatelessWidget {
  const BankDash({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BankDash',
      home: DashboardView(),
    );
  }
}
