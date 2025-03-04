// ignore_for_file: use_build_context_synchronously

import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Core/AuthService.dart';
import 'package:craftsportal/Core/CustomButton.dart';
import 'package:craftsportal/Core/Customtextfield.dart';
import 'package:craftsportal/Features/SignUpView/Data/Customtextfieldmodel.dart';
import 'package:craftsportal/Features/SignUpView/Presentation/FooterWidget.dart';
import 'package:craftsportal/Features/SplashView/Data/ButtonModel.dart';
import 'package:craftsportal/Features/VerificationCode/Presentation/VerifiyCode.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class Signupview extends StatefulWidget {
  const Signupview({super.key});

  @override
  State<Signupview> createState() => _SignupviewState();
}

class _SignupviewState extends State<Signupview> {
  final TextEditingController Mobilecontroller = TextEditingController();
  final TextEditingController Emailcontroller = TextEditingController();
  final TextEditingController Passwordcontroller = TextEditingController();
  final TextEditingController Namecontroller = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Form(
                  key: formkey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).CreateNew,
                        style: AppStyles.text20(context).copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        S.of(context).Account,
                        style: AppStyles.text20(context).copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.05),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              valid: (value) {
                                if (value!.isEmpty) {
                                  return S.of(context).entername;
                                }
                                return null;
                              },
                              customtextfieldmodel: Customtextfieldmodel(
                                controller: Namecontroller,
                                text: S.of(context).entername,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: CustomTextField(
                              valid: (value) {
                                if (value!.isEmpty || value.length != 11) {
                                  return S.of(context).EnterMobileNumber;
                                }
                                return null;
                              },
                              customtextfieldmodel: Customtextfieldmodel(
                                  text: S.of(context).MobileNumber,
                                  controller: Mobilecontroller),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        valid: (value) {
                          if (value!.isEmpty || !value.contains("@gmail.com")) {
                            return S.of(context).enteremail;
                          }
                          return null;
                        },
                        customtextfieldmodel: Customtextfieldmodel(
                            controller: Emailcontroller, text: S.of(context).email),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        valid: (value) {
                          if (value!.isEmpty) {
                            return S.of(context).enterpassword;
                          }
                          return null;
                        },
                        customtextfieldmodel: Customtextfieldmodel(
                            obscureText: true,
                            controller: Passwordcontroller,
                            text: S.of(context).password),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        customtextfieldmodel:
                            Customtextfieldmodel(text: S.of(context).category),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                      ),
                      CustomButton(
                        buttonModel: ButtonModel(
                          onPressed: () async {
                            if (formkey.currentState!.validate()) {
                              formkey.currentState!.save();
                            }

                            try {
                              await AuthService().SignUp(
                                  email: Emailcontroller.text,
                                  password: Passwordcontroller.text);

                              await AuthService().updateProfile(
                                  displayName: Namecontroller.text);

                              await QuickAlert.show(
                                context: context,
                                type: QuickAlertType.success,
                                text: S.of(context).signupsuccessfully,
                              );
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      settings: RouteSettings(
                                          arguments: Mobilecontroller.text),
                                      builder: (context) {
                                        return const Verifiycode();
                                      }));
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                await QuickAlert.show(
                                  context: context,
                                  type: QuickAlertType.error,
                                  text: S.of(context).weakpassword,
                                );
                              } else if (e.code == 'email-already-in-use') {
                                await QuickAlert.show(
                                  context: context,
                                  type: QuickAlertType.error,
                                  text: S.of(context).emailalreadyinuse,
                                );
                              }
                            } catch (e) {
                              await QuickAlert.show(
                                context: context,
                                type: QuickAlertType.error,
                                text: S.of(context).signupfailed,
                              );
                            }
                          },
                          title: S.of(context).signup,
                          color: Colors.grey.shade100,
                          minimumSize:
                              Size(MediaQuery.sizeOf(context).width, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FooterWidget(),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
