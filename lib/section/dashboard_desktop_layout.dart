import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/quick_invoice.dart';
import 'all_expenses.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        child: CustomDrawer(),
      ),
      SizedBox(width: 32),
      Expanded(
        flex: 2,
        child: Column(
          children: [
            AllExpenses(),
            QuickInvoice(),
          ],
        ),
      ),
    ]);
  }
}
