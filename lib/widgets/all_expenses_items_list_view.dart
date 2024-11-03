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
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return AllExpensesItem(
          item: items[index],
        );
      },
    );
  }
}
