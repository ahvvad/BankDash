import 'package:bankdash/dashboard/widgets/active_inactive_card.dart';
import 'package:flutter/material.dart';

class SelectedCardSection extends StatelessWidget {
  const SelectedCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: [
          Expanded(child: ActiveCard()),
          SizedBox(width: 20),
          Expanded(child: InactiveCard()),
        ],
      ),
    );
  }
}
