import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

import '../widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInLeft(
          child: Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
        ),
        const SizedBox(height: 16),
        FadeInRight(
            delay: const Duration(milliseconds: 500),
            child: const LatestTransactionListView())
      ],
    );
  }
}
