import 'dart:ui';

import 'package:flutter/material.dart';

class PlaceModel {
  PlaceModel(
      {required this.placeTitle,
      required this.desc,
      required this.img,
      this.onPressed});
  final String placeTitle;
  final String img;
  final String desc;
  void Function(BuildContext context)? onPressed;
}
