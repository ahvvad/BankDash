import 'package:bankdash/dashboard/utils/colors.dart';
import 'package:bankdash/dashboard/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpenseStatisticsChart extends StatelessWidget {
  const ExpenseStatisticsChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sectionsSpace: 2,
          centerSpaceRadius: 0,
          centerSpaceColor: Colors.transparent,
          sections: [
            PieChartSectionData(
              color: ColorsManager.darkOrange,
              value: 15,
              title: '15%',
              radius: 100,
              titleStyle: TextStyles.font16Bold(context).copyWith(
                color: ColorsManager.white,
              ),
            ),
            PieChartSectionData(
              color: ColorsManager.mainBlue,
              value: 25,
              title: '20%',
              radius: 80,
              titleStyle: TextStyles.font16Bold(context).copyWith(
                color: ColorsManager.white,
              ),
            ),
            PieChartSectionData(
              color: ColorsManager.pink,
              value: 40,
              title: '35%',
              radius: 70,
              titleStyle: TextStyles.font16Bold(context).copyWith(
                color: ColorsManager.white,
              ),
            ),
            PieChartSectionData(
              color: ColorsManager.primaryTxtColor,
              value: 30,
              title: '30%',
              radius: 85,
              titleStyle: TextStyles.font16Bold(context).copyWith(
                color: ColorsManager.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
