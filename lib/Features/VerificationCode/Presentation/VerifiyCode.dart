import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Core/CustomButton.dart';
import 'package:craftsportal/Features/HomeView/Presentation/Views/HomeView.dart';
import 'package:craftsportal/Features/SplashView/Data/ButtonModel.dart';
import 'package:craftsportal/Features/VerificationCode/Presentation/Widgets/Otp.dart';
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
          "Verification Code",
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
              "We Sent Verification Code to the number ",
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
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Verified Successfully"),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
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
                  title: "Verify",
                  color: Colors.grey),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Text(
              "Resend a new Code",
              style: AppStyles.text14(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 10.0),
                duration: (const Duration(seconds: 10)),
                builder: (context, value, child) {
                  return Text(
                    "Available in ${value.toInt().toString()}",
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
