import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/in_active_drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../section/drawer_items_list_view.dart';
import '../utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemsListView(),
          Expanded(child: SizedBox()),
          InActiveDrawerItem(
            item: DrawerItemModel(
                title: "Settings System", icon: Assets.imagesSettings),
          ),
          InActiveDrawerItem(
            item: DrawerItemModel(
                title: "Log Out Account", icon: Assets.imagesLogout),
          ),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
