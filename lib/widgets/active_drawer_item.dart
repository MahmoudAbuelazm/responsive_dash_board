import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/drawer_item_model.dart';
import '../utils/text_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        item.icon,
      ),
      title: Text(
        item.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 4,
        decoration: const BoxDecoration(
          color: Color(0xff4EB7F2),
        ),
      ),
    );
  }
}
