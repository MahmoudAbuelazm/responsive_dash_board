import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class MyCardsPageView extends StatelessWidget {
  final PageController pageController;
  const MyCardsPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (context) {
        return const MyCard();
      }),
    );
  }
}
