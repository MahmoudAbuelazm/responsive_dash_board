import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title:
            Text(transaction.title, style: AppStyles.styleSemiBold16(context)),
        subtitle:
            Text(transaction.date, style: AppStyles.styleRegular16(context)),
        trailing: Text(transaction.amount,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: transaction.isWithdrawal
                  ? const Color(0xfff3735E)
                  : const Color(0xff7CD87A),
            )),
      ),
    );
  }
}
