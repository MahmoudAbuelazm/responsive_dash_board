import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  final Color? imageBackgroundColor, imageColor;
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageBackgroundColor,
      this.imageColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: 60,
              height: 60,
              decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: imageBackgroundColor ?? const Color(0xffFAFAFA),
              ),
              child: Center(
                child: SvgPicture.asset(
                  image,
                  colorFilter: imageColor != null
                      ? ColorFilter.mode(imageColor!, BlendMode.srcIn)
                      : null,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor ?? const Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
