import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import 'all_expenses_and_quick_invoice.dart';
import 'income_section.dart';
import 'my_card_and_transaction_history.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoice(),
                SizedBox(height: 24),
                MyCardAndTransactionHistory(),
                SizedBox(height: 24),
                IncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
