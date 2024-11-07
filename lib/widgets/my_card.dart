import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Stack(
          children: [
            SvgPicture.asset(Assets.imagesCardBackground),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding:
                      const EdgeInsets.only(left: 30, right: 42, top: 8),
                  title: Text(
                    "Classic",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Debit",
                    style: AppStyles.styleMedium20(context)
                        .copyWith(color: Colors.white),
                  ),
                  trailing: SvgPicture.asset(Assets.imagesGallery),
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text("0918 8124 0042 8129",
                      style: AppStyles.styleSemiBold24(context).copyWith(
                          color: Colors.white, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text("12/20 - 124",
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: Colors.white)),
                ),
                const Flexible(child: SizedBox(height: 16)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
