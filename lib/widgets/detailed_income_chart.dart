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
            title: activeIndex == 0 ? "Design Service" : "40%",
            radius: activeIndex == 0 ? 50 : 40,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: Colors.white,
            ),
            value: 40,
            color: const Color(0xff208BC7),
          ),
          PieChartSectionData(
            title: activeIndex == 1 ? "Design Product" : "25%",
            value: 25,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: Colors.white,
            ),
            radius: activeIndex == 1 ? 50 : 40,
            color: const Color(0xff4Db7F2),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: Colors.white,
            ),
            radius: activeIndex == 2 ? 50 : 40,
            title: activeIndex == 2 ? "Product Royality" : "20%",
            value: 20,
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: Colors.white,
            ),
            radius: activeIndex == 3 ? 50 : 40,
            value: 15,
            title: activeIndex == 3 ? "Other" : "15%",
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
