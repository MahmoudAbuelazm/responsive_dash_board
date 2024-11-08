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
    return Row(
      children: AllExpensesItemsListView.items.asMap().entries.map((e) {
        final index = e.key;
        final item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                item: item,
                isSelected: index == selectedIndex,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
