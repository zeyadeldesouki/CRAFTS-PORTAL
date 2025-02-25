import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/ChatView/presentation/RecieveBubbleChat.dart';
import 'package:craftsportal/Features/ChatView/presentation/SendBubbleChat.dart';
import 'package:craftsportal/Features/ChatView/presentation/sendingdata.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Chatview extends StatelessWidget {
  const Chatview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).Messages,
          style: AppStyles.text20(context),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('messages')
                  .orderBy('time', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                      reverse: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: snapshot.data!.docs[index]['gmail'] ==
                                  FirebaseAuth.instance.currentUser!.email
                              ? SendBubbleChat(
                                  text: snapshot.data!.docs[index]['text'],
                                )
                              : RecieveBubbleChat(
                                  text: snapshot.data!.docs[index]['text'],
                                ),
                        );
                      },
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Sendingdata(),
          )
        ],
      ),
    );
  }
}
