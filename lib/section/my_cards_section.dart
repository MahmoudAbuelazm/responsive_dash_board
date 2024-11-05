import 'package:flutter/material.dart';
import 'package:responsive_dash_board/section/my_cards_page_view.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int _currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose(); // Dispose the PageController to free up resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Cards",
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(height: 20),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 20),
        DotsIndicator(
          currentPage: _currentPage,
        ),
      ],
    );
  }
}
