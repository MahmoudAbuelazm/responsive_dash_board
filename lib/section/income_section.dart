import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

import '../widgets/all_expenses_header.dart';
import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1200 && width < 1750
        ? SizedBox()
        : const CustomBackgroundContainer(
            child: Column(
              children: [
                AllExpensesHeader(
                  title: "Income",
                ),
                IncomeSectionBody()
              ],
            ),
          );
  }
}
