import 'package:craftsportal/Core/AppStyles.dart';
import 'package:flutter/material.dart';

class RecieveBubbleChat extends StatelessWidget {
  const RecieveBubbleChat({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: AppStyles.text14(context),
        ),
      ),
    );
  }
}
