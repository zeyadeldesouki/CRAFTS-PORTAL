import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Core/AuthService.dart';
import 'package:craftsportal/Core/CustomButton.dart';
import 'package:craftsportal/Core/Customtextfield.dart';
import 'package:craftsportal/Features/SignUpView/Data/Customtextfieldmodel.dart';
import 'package:craftsportal/Features/SplashView/Data/ButtonModel.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formkey,
          child: Column(
            children: [
              Text(
                "Forgot your Password",
                style: AppStyles.text20(context)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "Enter your Email",
                style: AppStyles.text14(context),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
              ),
              CustomTextField(
                valid: (value) {
                  if (value!.isEmpty || !value.contains("@gmail.com")) {
                    return "Enter Email";
                  }
                  return null;
                },
                customtextfieldmodel: Customtextfieldmodel(
                  controller: emailcontroller,
                  text: "Email",
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              CustomButton(
                buttonModel: ButtonModel(
                  onPressed: () async {
                    await AuthService()
                        .SetPassword(email: emailcontroller.text);
                  },
                  title: "Password recovery",
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
