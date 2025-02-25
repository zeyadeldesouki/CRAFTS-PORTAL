import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/ServiceProvider/Presentation/ReviewComments.dart';
import 'package:craftsportal/Features/ServiceProvider/Presentation/ReviewRating.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:flutter/material.dart';

class Reviewview extends StatelessWidget {
  const Reviewview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).Reviews,
          style: AppStyles.text20(context),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ReviewRating(),
            ReviewComments(
              title: S.of(context).Mohamed,
              subtitle:
                 S.of(context).Describtion,
            ),
            ReviewComments(
              title: S.of(context).Ahmed,
              subtitle:
                  S.of(context).AhmedDescribtion,
            ),
          ],
        ),
      ),
    );
  }
}
