import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 60,
              startDegreeOffset: -90,
              sections: pieChartData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  "29.1",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5),
                ),
                const Text("of 128GB")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

var pieChartData = [
  PieChartSectionData(
      value: 25, color: primaryColor, radius: 25, showTitle: false),
  PieChartSectionData(
      value: 20, color: Colors.red.shade400, radius: 23, showTitle: false),
  PieChartSectionData(
      value: 10, color: Colors.green.shade400, radius: 19, showTitle: false),
  PieChartSectionData(
      value: 15, color: Colors.yellow.shade400, radius: 16, showTitle: false),
  PieChartSectionData(
      value: 25,
      color: Colors.grey.withAlpha(30),
      radius: 13,
      showTitle: false),
];
