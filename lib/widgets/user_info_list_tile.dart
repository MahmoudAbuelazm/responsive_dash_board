import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

import '../models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const UserInfoListTile(
      {super.key,
      required this.userInfoModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(
        userInfoModel.  image,
        ),
        title: Text(
     userInfoModel.     title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
      userInfoModel.    subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
