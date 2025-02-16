import 'package:flutter/material.dart';

class Customtextfieldmodel {
  final String text;
  final TextEditingController? controller;
  final bool obscureText;

  Customtextfieldmodel( { required this.text,  this.controller,this.obscureText=false,});
}