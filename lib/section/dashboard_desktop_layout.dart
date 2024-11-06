import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import 'all_expenses_and_quick_invoice.dart';
import 'income_section.dart';
import 'my_card_and_transaction_history.dart';

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
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: AllExpensesAndQuickInvoice(),
        ),
      ),
      SizedBox(width: 24),
      Expanded(
          child: Column(
        children: [
          SizedBox(height: 40),
          MyCardAndTransactionHistory(),
          SizedBox(height: 24),
          Expanded(child: IncomeSection()),
        ],
      )),
    ]);
  }
}
