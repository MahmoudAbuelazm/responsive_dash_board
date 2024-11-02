import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static List<DrawerItemModel> items = [
    const DrawerItemModel(title: "Dashboard", icon: Assets.imagesDashboard),
    const DrawerItemModel(
        title: "My Transactions", icon: Assets.imagesMyTransctions),
    const DrawerItemModel(title: "Statistics", icon: Assets.imagesStatistics),
    const DrawerItemModel(
        title: "Wallet Account", icon: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: "My Investments", icon: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  Column(
        children: [
          const UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DrawerItem(item: items[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
