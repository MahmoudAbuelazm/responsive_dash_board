import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

import '../utils/text_styles.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel item;
  const DrawerItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        item.icon,
      ),
      title: Text(
        item.title,
        style: AppStyles.styleMedium16(context)
      ),
    );
  }
}
