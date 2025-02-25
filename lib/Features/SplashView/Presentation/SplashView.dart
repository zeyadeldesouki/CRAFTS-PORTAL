import 'package:craftsportal/Features/SplashView/Data/ButtonModel.dart';
import 'package:flutter/material.dart';
import 'package:craftsportal/Features/SignInView/Presentation/SignInview.dart';
import 'package:craftsportal/Features/SignUpView/Presentation/SignUpView.dart';
import 'package:craftsportal/Core/CustomButton.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:craftsportal/Core/AppStyles.dart';

class SplashView extends StatelessWidget {
  final Function(String) changeLanguage;

  const SplashView({super.key, required this.changeLanguage});

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
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn-front.freepik.com/images/ai/image-generator/gallery/resource-tti-16.webp",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              // child: Center(
              //   child: AnimatedTextKit(
              //     animatedTexts: [
              //       WavyAnimatedText(
              //         S.of(context).CraftsPortal,
              //         textStyle: const TextStyle(
              //             fontSize: 40,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white),
              //       ),
              //     ],
              //      repeatForever: true,
              //   ),
              // ),
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
                    S.of(context).LetsGo,
                    style: AppStyles.text20(context).copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
                              title: S.of(context).signin,
                              color: Colors.green,
                            ),
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
                              title: S.of(context).signup,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        final newLocale =
                            Localizations.localeOf(context).languageCode == 'en'
                                ? 'ar'
                                : 'en';
                        changeLanguage(newLocale);
                      },
                      child: Text(
                        S.of(context).switchLanguage,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
