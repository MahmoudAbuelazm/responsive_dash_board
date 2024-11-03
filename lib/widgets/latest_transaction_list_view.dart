import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const item = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "John Doe",
        subtitle: "johndoe23@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Lily Smith",
        subtitle: "lilysmith@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: "Alex Johnson",
        subtitle: "alexjohnson@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: item.length,
      itemBuilder: (context, index) {
        return UserInfoListTile(
          userInfoModel: item[index],
        );
      },
    );
  }
}
