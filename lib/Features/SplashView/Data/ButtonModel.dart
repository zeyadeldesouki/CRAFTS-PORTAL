import 'package:flutter/material.dart';

class ButtonModel{
  final String title;
  final Color color;
  final void Function()? onPressed;
  final Size? minimumSize;

  ButtonModel({this.minimumSize, required this.title, required this.color, this.onPressed});
}