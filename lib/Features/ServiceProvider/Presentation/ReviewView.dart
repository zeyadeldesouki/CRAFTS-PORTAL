import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/ServiceProvider/Presentation/ReviewComments.dart';
import 'package:craftsportal/Features/ServiceProvider/Presentation/ReviewRating.dart';
import 'package:flutter/material.dart';

class Reviewview extends StatelessWidget {
  const Reviewview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Reviews",
          style: AppStyles.text20(context),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ReviewRating(),
            ReviewComments(
              title: "Mohamed",
              subtitle:
                  "It is a professional plumber and has done all the plumbing related work in our home. I highly recommend it",
            ),
            ReviewComments(
              title: "Ahmed",
              subtitle:
                  "He did a really great job, but the price is a little high",
            ),
          ],
        ),
      ),
    );
  }
}
