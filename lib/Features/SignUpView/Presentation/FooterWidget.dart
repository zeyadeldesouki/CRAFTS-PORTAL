import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/SignInView/Presentation/SignInview.dart';
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
          "By signing up, you agree to our Terms and Conditions",
          style: AppStyles.text14(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already a member? ",
              style: AppStyles.text14(context),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignInview();
                }));
              },
              child: Text(
                "Sign In",
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
