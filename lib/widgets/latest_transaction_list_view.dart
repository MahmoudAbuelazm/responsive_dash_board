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
        image: Assets.imagesAvatar1,
        title: "Alex Johnson",
        subtitle: "alexjohnson@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: item.map((e) {
    //       return UserInfoListTile(
    //         userInfoModel: e,
    //       );
    //     }).toList(),
    //   ),
    // );
    return SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: item.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: item[index],
            ),
          );
        },
      ),
    );
  }
}
