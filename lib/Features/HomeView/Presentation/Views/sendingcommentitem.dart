import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craftsportal/Core/Customtextfield.dart';
import 'package:craftsportal/Features/SignUpView/Data/Customtextfieldmodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class sendingcommentitem extends StatelessWidget {
  const sendingcommentitem({
    super.key,
    required this.controller,
    required this.comments,
    required this.postId,
  });

  final TextEditingController controller;
  final CollectionReference<Object?> comments;
  final String postId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 5,
            child: CustomTextField(
              customtextfieldmodel: Customtextfieldmodel(
                  controller: controller, text: "Type a comment"),
            )),
        Expanded(
          child: IconButton(
            onPressed: () async {
              await comments.add({
                'text': controller.text,
                'time': DateTime.now(),
                'id': FirebaseAuth.instance.currentUser!.uid,
                'postId': postId
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
