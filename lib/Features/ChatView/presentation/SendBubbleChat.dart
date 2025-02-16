import 'package:craftsportal/Core/AppStyles.dart';
import 'package:flutter/material.dart';

class SendBubbleChat extends StatelessWidget {
  const SendBubbleChat({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
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
