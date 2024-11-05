import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Transaction History", style: AppStyles.styleSemiBold20(context)),
          Text("See all", style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xff4DB7F2)
          )),
        ],)
      ],
    );
  }
}