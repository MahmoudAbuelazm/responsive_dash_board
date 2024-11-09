import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

import '../utils/text_styles.dart';
// import 'package:responsive_dash_board/section/my_cards_page_view.dart';
// import 'package:responsive_dash_board/utils/text_styles.dart';
// import 'package:responsive_dash_board/widgets/dots_indicator.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  // late PageController pageController;
  // int _currentPage = 0;

  // @override
  // void initState() {
  //   pageController = PageController();
  //   pageController.addListener(() {
  //     setState(() {
  //       _currentPage = pageController.page!.round();
  //     });
  //   });
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   pageController.dispose(); // Dispose the PageController to free up resources
  //   super.dispose();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         "My Cards",
  //         style: AppStyles.styleSemiBold20(context),
  //       ),
  //       const SizedBox(height: 20),
  //       MyCardsPageView(
  //         pageController: pageController,
  //       ),
  //       const SizedBox(height: 20),
  //       DotsIndicator(
  //         currentPage: _currentPage,
  //       ),
  //     ],
  //   );
  // }
  int activeIndex = widgets.length - 1;
  double activePosition = 0;
  final controller = FlipCardController();
  int? selected = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "My Cards",
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 380,
          child: Stack(
            alignment: Alignment.center,
            children: [
              for (int i = 0; i < widgets.length; i++)
                AnimatedPositioned(
                  bottom: selected == i
                      ? 230
                      : activeIndex == i
                          ? activePosition == 0
                              ? -i * 20
                              : activePosition
                          : -i * 10,
                  duration: Duration(milliseconds: selected == i ? 200 : 0),
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: GestureDetector(
                      onTap: () {
                        if (selected == i) {
                        } else {
                          setState(() {
                            selected = i;
                          });
                        }
                      },
                      onVerticalDragUpdate: (details) {
                        if (selected == -1) {
                          setState(() {
                            activePosition = details.localPosition.dy > 120
                                ? 0
                                : -details.localPosition.dy;
                          });
                        }
                      },
                      onVerticalDragEnd: (details) {
                        if (activePosition > 150) {
                          activePosition = 0;
                          widgets.insert(0, widgets.removeAt(activeIndex));
                          backWidgets.insert(
                              0, backWidgets.removeAt(activeIndex));
                        } else {
                          activePosition = 0;
                        }
                        setState(() {});
                      },
                      child: FlipCard(
                          frontWidget: widgets[i],
                          backWidget: backWidgets[i],
                          controller: controller,
                          onTapFlipping: true,
                          animationDuration: const Duration(milliseconds: 250),
                          rotateSide: RotateSide.bottom),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

List widgets = [
  card("assets/images/cards/front1.png"),
  card("assets/images/cards/front2.png"),
  card("assets/images/cards/front3.png"),
];

List backWidgets = [
  card("assets/images/cards/back1.png"),
  card("assets/images/cards/back2.png"),
  card("assets/images/cards/back3.png"),
];

Widget card(String image) => Hero(
      tag: image,
      child: SizedBox(
        height: 170,
        child: AspectRatio(
          aspectRatio: 420 / 220,
          child: Image.asset(
            image,
          ),
        ),
      ),
    );
