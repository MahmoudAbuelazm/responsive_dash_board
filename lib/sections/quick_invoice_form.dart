import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';

import '../widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer Name',
                hint: 'Type your customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Invoice Email',
                hint: 'Type your customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item Name',
                hint: 'Type your customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Item Price',
                hint: 'USD',
              ),
            ),
          ],
        ),
          SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: "Add More Details",
                backgroundColor: Colors.transparent,
                textColor:  Color(0xff4DB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
