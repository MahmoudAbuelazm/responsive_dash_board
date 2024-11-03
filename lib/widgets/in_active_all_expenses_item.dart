import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/text_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel item;
  const InActiveAllExpensesItem({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: item.image,
          ),
          const SizedBox(height: 34),
          Text(
            item.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(height: 8),
          Text(
            item.price,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(height: 16),
          Text(
            item.date,
            style: AppStyles.styleSemiBold24(context),
          ),

        ],
      ),
    );
  }
}