// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craftsportal/Core/Customtextfield.dart';
import 'package:craftsportal/Features/SignUpView/Data/Customtextfieldmodel.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class feed extends StatelessWidget {
  const feed({
    super.key,
    required this.controller,
    required this.Feeds,
  });

  final TextEditingController controller;
  final CollectionReference<Object?> Feeds;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 5,
            child: CustomTextField(
              customtextfieldmodel: Customtextfieldmodel(
                  controller: controller, text: S.of(context).Whaton),
            )),
        Expanded(
          child: IconButton(
            onPressed: () async {
              await Feeds.add({
                'title': controller.text,
                'time': DateTime.now(),
                'gmail': FirebaseAuth.instance.currentUser!.email,
                'name': FirebaseAuth.instance.currentUser!.displayName,
                'id': FirebaseAuth.instance.currentUser!.uid
                
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
