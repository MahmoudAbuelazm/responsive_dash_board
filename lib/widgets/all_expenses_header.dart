import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  final String title;
  const AllExpensesHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FadeInLeft(
            child: Text(title, style: AppStyles.styleSemiBold20(context))),
        const Spacer(),
        FadeInRight(
          child: Container(
            padding: const EdgeInsets.all(12),
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
            child: Row(
              children: [
                Text("Monthly", style: AppStyles.styleMedium16(context)),
                const SizedBox(width: 18),
                Transform.rotate(
                  angle: -1.5708,
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(0xFF064061),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
