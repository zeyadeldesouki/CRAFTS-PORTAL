import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Core/CustomButton.dart';
import 'package:craftsportal/Features/HomeView/Presentation/Views/HomeView.dart';
import 'package:craftsportal/Features/SplashView/Data/ButtonModel.dart';
import 'package:craftsportal/Features/VerificationCode/Presentation/Widgets/Otp.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:flutter/material.dart';

class Verifiycode extends StatelessWidget {
  const Verifiycode({super.key});

  @override
  Widget build(BuildContext context) {
    var phone = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).VerificationCode,
          style:
              AppStyles.text20(context).copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              S.of(context).sentcode,
              style: AppStyles.text14(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              phone,
              style: AppStyles.text14(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Otp(),
                Otp(),
                Otp(),
                Otp(),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
            CustomButton(
              buttonModel: ButtonModel(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(S.of(context).VerifiedSuccessfully),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Homeview();
                    }));
                  },
                  minimumSize: Size(MediaQuery.sizeOf(context).width, 50),
                  title: S.of(context).Verify,
                  color: Colors.grey),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Text(
              S.of(context).ResendCode,
              style: AppStyles.text14(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 10.0),
                duration: (const Duration(seconds: 10)),
                builder: (context, value, child) {
                  return Text(
                    "${S.of(context).Availablein} ${value.toInt().toString()}",
                    style: AppStyles.text14(context),
                  );
                }),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
