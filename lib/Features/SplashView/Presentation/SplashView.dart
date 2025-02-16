import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Core/CustomButton.dart';
import 'package:craftsportal/Features/SignInView/Presentation/SignInview.dart';
import 'package:craftsportal/Features/SignUpView/Presentation/SignUpView.dart';
import 'package:craftsportal/Features/SplashView/Data/ButtonModel.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Crafts Portal',
                      textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
                repeatForever: true,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.1,
                ),
                Text(
                  "Lets's Go",
                  style: AppStyles.text20(context).copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          buttonModel: ButtonModel(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const SignInview();
                                }));
                              },
                              title: "Sign In",
                              color: Colors.green),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.05,
                      ),
                      Expanded(
                        child: CustomButton(
                          buttonModel: ButtonModel(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Signupview();
                                }));
                              },
                              title: "Sign Up",
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
