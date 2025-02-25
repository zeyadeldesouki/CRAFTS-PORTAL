import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:flutter/material.dart';

class Accountinformation extends StatelessWidget {
  const Accountinformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).Information,
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
              S.of(context).Location,
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              S.of(context).Cairo,
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
              S.of(context).Orderhistory,
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "9 ${S.of(context).orders}",
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
              S.of(context).language,
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              S.of(context).English,
              style: AppStyles.text16(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
