import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
            value: 40,
            radius: activeIndex == 0 ? 50 : 40,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: Colors.white,
            ),
            color: const Color(0xff208BC7),
          ),
          PieChartSectionData(
            value: 25,
            radius: activeIndex == 1 ? 50 : 40,
            color: const Color(0xff4Db7F2),
          ),
          PieChartSectionData(
            radius: activeIndex == 2 ? 50 : 40,
            value: 20,
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            radius: activeIndex == 3 ? 50 : 40,
            value: 15,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
