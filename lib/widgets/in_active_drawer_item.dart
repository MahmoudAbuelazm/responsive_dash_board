import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/drawer_item_model.dart';
import '../utils/text_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
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
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(item.title, style: AppStyles.styleMedium16(context)),
      ),
    );
  }
}
