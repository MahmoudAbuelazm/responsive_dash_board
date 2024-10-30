import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

import '../utils/app_images.dart';

class UserInfoListTile extends StatelessWidget {
  final String image, title, subtitle;
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        image,
      ),
      title: Text(
        title,
        style: AppStyles.styleSemiBold16(context),
      ),
      subtitle: Text(
        subtitle,
        style: AppStyles.styleRegular12(context),
      ),
    );
  }
}
