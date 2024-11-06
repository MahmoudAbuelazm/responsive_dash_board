import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            value: 40,
            radius: activeIndex == 0 ? 100 : 80,
            color: const Color(0xff208BC7),
          ),
          PieChartSectionData(
            value: 25,
            radius: activeIndex == 1 ? 100 : 80,
            showTitle: false,
            color: const Color(0xff4Db7F2),
          ),
          PieChartSectionData(
            radius: activeIndex == 2 ? 100 : 80,
            value: 20,
            showTitle: false,
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            radius: activeIndex == 3 ? 100 : 80,
            value: 15,
            showTitle: false,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
