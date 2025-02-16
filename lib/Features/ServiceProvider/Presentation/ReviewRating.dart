import 'package:craftsportal/Core/AppStyles.dart';
import 'package:flutter/material.dart';

class ReviewRating extends StatelessWidget {
  const ReviewRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.04),
      child: Row(
        children: [
          Text(
            "2.8",
            style:
                AppStyles.text20(context).copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.09,
          ),
          const Column(
            children: [
              Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),
              Row(
                children: [
                  Text("520"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.person)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
