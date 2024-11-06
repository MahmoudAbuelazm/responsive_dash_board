import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';

import 'transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List items = [
    TransactionModel(
        title: "Cash Withdrawal",
        date: "13 Apr 2022",
        amount: "\$20,129",
        isWithdrawal: true),
    TransactionModel(
        title: "Landing Page Project",
        date: "13 Apr 2022",
        amount: "\$2,000",
        isWithdrawal: false),
         TransactionModel(
        title: "Juni Mobile App Project",
        date: "13 Apr 2022",
        amount: "\$2,000",
        isWithdrawal: false),

    
  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionItem(transaction: items[index]);
      },
    );
  }
}
