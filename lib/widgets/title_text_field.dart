import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  final String title, hint;
  const TitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xffFAFAFA),
          ),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}
