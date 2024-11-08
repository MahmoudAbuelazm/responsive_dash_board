import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
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
        price: r"$10,032",
        date: "Jan 2021"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expense",
        price: r"$5,052",
        date: "Jan 2021"),
  ];

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          child: AllExpensesItem(
            item: AllExpensesItemsListView.items[0],
            isSelected: 0 == selectedIndex,
          ),
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          child: AllExpensesItem(
            item: AllExpensesItemsListView.items[1],
            isSelected: 1 == selectedIndex,
          ),
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
          },
          child: AllExpensesItem(
            item: AllExpensesItemsListView.items[2],
            isSelected: 2 == selectedIndex,
          ),
        ),
      )
    ]);
  }
}
