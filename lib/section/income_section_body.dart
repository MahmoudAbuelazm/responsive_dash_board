
import 'package:flutter/material.dart';

import '../widgets/income_chart.dart';
import '../widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: IncomeChart(),
        ),
        Expanded(
          flex: 2,
          child: IncomeDetails(),
        ),
      ],
    );
  }
}
