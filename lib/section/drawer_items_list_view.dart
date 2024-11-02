import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import '../widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: "Dashboard", icon: Assets.imagesDashboard),
    const DrawerItemModel(
        title: "My Transactions", icon: Assets.imagesMyTransctions),
    const DrawerItemModel(title: "Statistics", icon: Assets.imagesStatistics),
    const DrawerItemModel(
        title: "Wallet Account", icon: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: "My Investments", icon: Assets.imagesMyInvestments),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              item: items[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
