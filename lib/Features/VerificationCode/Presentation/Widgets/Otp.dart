import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), shape: BoxShape.rectangle),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          )),
        ),
      ),
    );
  }
}
