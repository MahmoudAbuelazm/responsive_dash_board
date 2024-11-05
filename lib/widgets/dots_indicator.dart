import 'package:flutter/material.dart';

import 'custom_dots.dart';

class DotsIndicator extends StatelessWidget {
  final int currentPage;
  const DotsIndicator({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(3, (index) {
      return  Padding(
        padding:const EdgeInsets.only(right: 6),
        child: CustomDots(isActive: index == currentPage),
      );
    }));
  }
}
