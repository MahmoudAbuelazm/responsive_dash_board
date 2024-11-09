import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/quick_invoice.dart';
import 'all_expenses.dart';
import 'income_section.dart';
import 'my_card_and_transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: FadeInLeft(child: const CustomDrawer()),
      ),
      const SizedBox(width: 32),
      Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            FadeInDown(child: const AllExpenses()),
                            const SizedBox(height: 24),
                            FadeInUp(child: const QuickInvoice()),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                        child: FadeInRight(
                      child: const Column(
                        children: [
                          SizedBox(height: 40),
                          MyCardAndTransactionHistory(),
                          SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    )),
                  ],
                ),
              )
            ],
          )),
    ]);
  }
}
