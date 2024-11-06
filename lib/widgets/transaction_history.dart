import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

import 'transaction_header.dart';
import 'transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const SizedBox(height: 20),
        Text("13 April 2021",
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xffA1A4B2))),
        TransactionHistoryListView(),
      ],
    );
  }
}
