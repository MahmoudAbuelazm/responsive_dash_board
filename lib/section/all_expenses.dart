import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import '../widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItem(
            item: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: "Income",
              price: r"$20",
              date: "12 Jan 2021",
            ),
          ),
        ],
      ),
    );
  }
}
