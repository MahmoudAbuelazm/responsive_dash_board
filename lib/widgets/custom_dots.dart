import 'package:flutter/material.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xff4DB7f2) : const Color(0xffE7E7E7),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}
