import 'package:flutter/material.dart';

class Commentview extends StatelessWidget {
  const Commentview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Comments"),
      ),
    );
  }
}