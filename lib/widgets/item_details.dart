import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

import '../models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  final ItemDetailsModel itemDetails;
  const ItemDetails({super.key, required this.itemDetails});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:  ShapeDecoration(
          shape: const OvalBorder(),
          color: itemDetails.color,
        ),
      ),
      title: Text(
        itemDetails.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetails.value,
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xff208cc8),
        ),
      ),
    );
  }
}
