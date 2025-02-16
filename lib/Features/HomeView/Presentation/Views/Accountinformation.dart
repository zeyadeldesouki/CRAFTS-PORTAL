import 'package:craftsportal/Core/AppStyles.dart';
import 'package:flutter/material.dart';

class Accountinformation extends StatelessWidget {
  const Accountinformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Information",
          style:
              AppStyles.text20(context).copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Location",
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Cairo",
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order history",
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "9 orders",
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "language",
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "English",
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
