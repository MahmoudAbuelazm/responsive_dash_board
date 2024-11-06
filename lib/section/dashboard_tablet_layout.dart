import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import 'all_expenses_and_quick_invoice.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoice(),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
