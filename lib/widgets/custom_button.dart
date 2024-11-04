import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: const Color(0xff4DB7F2),
        ),
        onPressed: () {},
        child: Text('Send Money',
            style: AppStyles.styleSemiBold18(context)
                .copyWith(color: Colors.white)),
      ),
    );
  }
}
