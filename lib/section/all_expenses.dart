import 'package:flutter/material.dart';
import '../widgets/all_expenses_header.dart';
import '../widgets/all_expenses_items_list_view.dart';
import '../widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsListView()
        ],
      ),
    );
  }
}
