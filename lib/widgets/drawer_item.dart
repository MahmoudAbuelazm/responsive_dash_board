import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

import 'active_drawer_item.dart';
import 'in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel item;
  final bool isActive;
  const DrawerItem({super.key, required this.item, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(item: item)
        : InActiveDrawerItem(item: item);
  }
}
