import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/SplashView/Data/ButtonModel.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonModel,
  });
  final ButtonModel buttonModel;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonModel.color,
        minimumSize:buttonModel.minimumSize 
      ),
      onPressed: buttonModel.onPressed,
      child: Text(
        buttonModel.title,
        style: AppStyles.text14(context).copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
