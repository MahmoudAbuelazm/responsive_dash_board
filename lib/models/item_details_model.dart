import 'package:flutter/material.dart';

class ItemDetailsModel {
  ItemDetailsModel(
      {required this.title, required this.value, required this.color});
  final String title, value;
  final Color color;
}
