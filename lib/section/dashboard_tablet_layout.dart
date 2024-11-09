import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import 'all_expenses_and_quick_invoice.dart';
import 'income_section.dart';
import 'my_card_and_transaction_history.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FadeInLeft(child: const CustomDrawer()),
        ),
        const SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: FadeInRight(
            child: const Padding(
              padding: EdgeInsets.only(top: 40),
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
          ),
        ),
        const SizedBox(width: 32),
      ],
    );
  }
}
