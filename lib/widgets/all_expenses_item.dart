import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import 'active_all_expenses_item.dart';
import 'in_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel item;
  final bool isSelected;
  const AllExpensesItem(
      {super.key, required this.item, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveAllExpensesItem(item: item),
      secondChild: InActiveAllExpensesItem(item: item),
      crossFadeState:
          isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 500),
    );
  }
}
