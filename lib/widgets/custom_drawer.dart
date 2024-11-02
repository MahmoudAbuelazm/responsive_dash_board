import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../utils/app_images.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItem()
        ],
      ),
    );
  }
}
