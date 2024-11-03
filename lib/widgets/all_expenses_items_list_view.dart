import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});

  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        price: r"$20,129",
        date: "Jan 2024"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        price: r"$20",
        date: "Jan 2021"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expense",
        price: r"$20",
        date: "Jan 2021"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(
      //           child: AllExpensesItem(
      //             item: e,
      //           ),
      //         ))
      //     .toList(),
      children: items.asMap().entries.map((e) {
        final index = e.key;
        final item = e.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllExpensesItem(
              item: item,
            ),
          ),
        );
      }).toList(),
    );
  }
}
