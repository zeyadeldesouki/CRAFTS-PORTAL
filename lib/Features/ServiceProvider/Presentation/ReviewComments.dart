import 'package:craftsportal/Core/AppStyles.dart';
import 'package:flutter/material.dart';

class ReviewComments extends StatelessWidget {
  const ReviewComments({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: CircleAvatar(
              radius: 20,
            ),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
          Text(
            title,
            style:
                AppStyles.text20(context).copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
            ),
          ],
        ),
      ),
    );
  }
}
