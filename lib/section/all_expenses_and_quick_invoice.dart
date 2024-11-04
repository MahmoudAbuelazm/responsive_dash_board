import 'package:flutter/material.dart';

import '../widgets/quick_invoice.dart';
import 'all_expenses.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          AllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
