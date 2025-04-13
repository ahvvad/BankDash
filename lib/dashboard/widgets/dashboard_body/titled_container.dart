import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:bankdash/dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class TitledContainer extends StatelessWidget {
  const TitledContainer({
    super.key,
    required this.title,
    required this.child,
    this.columnAlignment,
  });
  final String title;
  final Widget child;
  final CrossAxisAlignment? columnAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: columnAlignment ?? CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font18SemiBold(context).copyWith(
            color: ColorsManager.primaryTxtColor,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          child: child,
        ),
      ],
    );
  }
}
