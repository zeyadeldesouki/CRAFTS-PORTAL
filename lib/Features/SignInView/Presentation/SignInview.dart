// ignore_for_file: use_build_context_synchronously

import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Core/AuthService.dart';
import 'package:craftsportal/Core/CustomButton.dart';
import 'package:craftsportal/Core/Customtextfield.dart';
import 'package:craftsportal/Features/ServiceCategoriesView/Presentation/ServiceCategoriesView.dart';
import 'package:craftsportal/Features/SignInView/Presentation/ForgotPasswordView.dart';
import 'package:craftsportal/Features/SignUpView/Data/Customtextfieldmodel.dart';
import 'package:craftsportal/Features/SignUpView/Presentation/SignUpView.dart';
import 'package:craftsportal/Features/SplashView/Data/ButtonModel.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class SignInview extends StatefulWidget {
  const SignInview({super.key});

  @override
  State<SignInview> createState() => _SignInviewState();
}

class _SignInviewState extends State<SignInview> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                S.of(context).title,
                style: AppStyles.text20(context)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                S.of(context).account,
                style: AppStyles.text20(context)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              CustomTextField(
                valid: (value) {
                  if (value!.isEmpty || !value.contains("@gmail.com")) {
                    return S.of(context).enteremail;
                  }
                  return null;
                },
                customtextfieldmodel: Customtextfieldmodel(
                  controller: emailController,
                  text: S.of(context).email,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              CustomTextField(
                valid: (value) {
                  if (value!.isEmpty || value.length < 6) {
                    return S.of(context).enterpassword;
                  }
                  return null;
                },
                customtextfieldmodel: Customtextfieldmodel(
                    obscureText: true,
                    controller: passwordController,
                    text: S.of(context).password),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ForgotPasswordView();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      S.of(context).ForgotPassword,
                      style: AppStyles.text14(context),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              CustomButton(
                  buttonModel: ButtonModel(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  }
                  try {
                    await AuthService().SignIn(
                        email: emailController.text,
                        password: passwordController.text);
                   await QuickAlert.show(
                      context: context,
                      type: QuickAlertType.success,
                      text: S.of(context).LoginSuccessfully,
                    );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ServiceCategoriesView();
                    }));
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'invalid-credential') {
                      return QuickAlert.show(
                        context: context,
                        type: QuickAlertType.error,
                        text: S.of(context).Invalidemailorpassword,
                      );
                    }
                  }
                },
                minimumSize: Size(MediaQuery.sizeOf(context).width * 0.8, 50),
                title: S.of(context).signin,
                color: Colors.grey,
              )),
              const Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).Notyetamember,
                    style: AppStyles.text14(context),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Signupview();
                      }));
                    },
                    child: Text(
                      S.of(context).signup,
                      style: AppStyles.text14(context)
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
