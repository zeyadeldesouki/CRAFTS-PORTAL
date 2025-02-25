import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/SignInView/Presentation/SignInview.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).ourterms,
          style: AppStyles.text14(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).Alreadymember,
              style: AppStyles.text14(context),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignInview();
                }));
              },
              child: Text(
                S.of(context).signin,
                style: AppStyles.text14(context)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
