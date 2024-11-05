import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/transaction_history.dart';
import 'all_expenses_and_quick_invoice.dart';

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
        child: AllExpensesAndQuickInvoice(),
      ),
      SizedBox(width: 24),
      Expanded(child: TransactionHistory()),
    ]);
  }
}
