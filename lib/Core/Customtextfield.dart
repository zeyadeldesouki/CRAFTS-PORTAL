import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/SignUpView/Data/Customtextfieldmodel.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.customtextfieldmodel, this.valid,
  });
 
  final Customtextfieldmodel customtextfieldmodel;
   final String? Function(String?)? valid;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:customtextfieldmodel.obscureText ,
      validator:valid ,
      controller: customtextfieldmodel.controller,
      decoration: InputDecoration(
        hintText: customtextfieldmodel.text,
        hintStyle: AppStyles.text14(context).copyWith(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
