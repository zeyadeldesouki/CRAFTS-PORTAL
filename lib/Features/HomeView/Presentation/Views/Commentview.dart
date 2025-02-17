import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craftsportal/Features/HomeView/Presentation/Views/sendingcommentitem.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Commentview extends StatefulWidget {
  const Commentview({super.key});

  @override
  State<Commentview> createState() => _CommentviewState();
}

class _CommentviewState extends State<Commentview> {
  final TextEditingController controller = TextEditingController();
  late String postId;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    postId = ModalRoute.of(context)!.settings.arguments as String;
  }

  CollectionReference comments =
      FirebaseFirestore.instance.collection('comment');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Comments"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('comment')
                  .where('postId', isEqualTo: postId)
                  .orderBy('time', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              child: Image.network(
                                  "https://th.bing.com/th/id/OIP.hGSCbXlcOjL_9mmzerqAbQHaHa?w=197&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                            ),
                            title: Text(FirebaseAuth
                                .instance.currentUser!.displayName!),
                            subtitle: Text(snapshot.data!.docs[index]['text']),
                          );
                        }),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
            sendingcommentitem(
              controller: controller,
              comments: comments,
              postId: postId,
            )
          ],
        ),
      ),
    );
  }
}
