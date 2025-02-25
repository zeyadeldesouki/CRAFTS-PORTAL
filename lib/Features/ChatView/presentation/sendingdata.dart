import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craftsportal/Core/Customtextfield.dart';
import 'package:craftsportal/Features/SignUpView/Data/Customtextfieldmodel.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Sendingdata extends StatefulWidget {
  const Sendingdata({
    super.key,
  });

  @override
  State<Sendingdata> createState() => _SendingdataState();
}

class _SendingdataState extends State<Sendingdata> {
  final TextEditingController controller = TextEditingController();
  CollectionReference Messages =
      FirebaseFirestore.instance.collection('messages');

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 5,
            child: CustomTextField(
              customtextfieldmodel: Customtextfieldmodel(
                  controller: controller, text: S.of(context).Typemessage),
            )),
        Expanded(
          child: IconButton(
            onPressed: () async {
              await Messages.add({
                'text': controller.text,
                'time': DateTime.now(),
                'gmail': FirebaseAuth.instance.currentUser!.email,
              });

              controller.clear();
            },
            icon: const Icon(
              Icons.send,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
