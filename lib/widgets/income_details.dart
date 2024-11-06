import 'package:flutter/material.dart';

import '../models/item_details_model.dart';
import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static List items = [
    ItemDetailsModel(
      title: "Design Service",
      value: "40%",
      color: const Color(0xff208bc7),
    ),
    ItemDetailsModel(
      title: "Design Product",
      value: "25%",
      color: const Color(0xff4db7f2),
    ),
    ItemDetailsModel(
      title: "Product Royality",
      value: "20%",
      color: const Color(0xff064060),
    ),
    ItemDetailsModel(
      title: "Other",
      value: "15%",
      color: const Color(0xffe2decd),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
      itemBuilder: (context, index) {
      return ItemDetails(itemDetails: items[index]);
    });
  }
}
