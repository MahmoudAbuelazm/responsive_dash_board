import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FadeInLeft(child: Text('Quick Invoice', style: AppStyles.styleSemiBold20(context))),
        const Spacer(),
        FadeInRight(
          child: Container(
            width: 48,
            height: 48,
            decoration: const ShapeDecoration(
                shape: OvalBorder(), color: Color(0xffFAFAFA)),
            child: const Icon(
              Icons.add,
              color: Color(0xff4EB7F2),
            ),
          ),
        )
      ],
    );
  }
}
