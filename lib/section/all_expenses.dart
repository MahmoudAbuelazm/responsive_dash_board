import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../widgets/all_expenses_header.dart';
import '../widgets/all_expenses_items_list_view.dart';
import '../widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AllExpensesHeader(
            title: "All Expenses",
          ),
          const SizedBox(height: 16),
          FadeInRight(
            delay: const Duration(milliseconds: 500),
            child: const AllExpensesItemsListView())
        ],
      ),
    );
  }
}
