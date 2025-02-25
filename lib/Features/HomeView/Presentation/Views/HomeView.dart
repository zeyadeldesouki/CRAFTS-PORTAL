import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Core/CustomNavigationBar.dart';
import 'package:craftsportal/Features/HomeView/Presentation/Views/Commentview.dart';
import 'package:craftsportal/Features/HomeView/Presentation/Views/Feedwidget.dart';
import 'package:craftsportal/Features/ServiceProvider/Presentation/ServiceProvider.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  final TextEditingController controller = TextEditingController();

  CollectionReference Feeds = FirebaseFirestore.instance.collection('Feeds');

  final Set<String> likedItems = {};
  void toggleLike({required String itemId}) {
    setState(() {
      if (likedItems.contains(itemId)) {
        likedItems.remove(itemId);
      } else {
        likedItems.add(itemId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const CustomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              feed(controller: controller, Feeds: Feeds),
              StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('Feeds')
                      .orderBy('time', descending: true)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            final isLiked = likedItems
                                .contains(snapshot.data!.docs[index].id);
                            return Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: snapshot.data!.docs[index]['gmail'] ==
                                          FirebaseAuth
                                              .instance.currentUser!.email
                                      ? Colors.grey
                                      : Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      settings: RouteSettings(
                                                        arguments: snapshot
                                                                .data!
                                                                .docs[index]
                                                            ['name'],
                                                      ),
                                                      builder: (context) =>
                                                          const ServiceProvider()));
                                            },
                                            child: Container(
                                              width: 50,
                                              height: 50,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://th.bing.com/th/id/OIP.hGSCbXlcOjL_9mmzerqAbQHaHa?w=197&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            snapshot.data!.docs[index]['name'],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.01,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          snapshot.data!.docs[index]['title'],
                                          style: AppStyles.text16(context),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            snapshot.data!.docs[index]['gmail'],
                                            style: AppStyles.text14(context),
                                          ),
                                          Text(
                                            snapshot.data!.docs[index]['time']
                                                .toDate()
                                                .toString()
                                                .substring(0, 16),
                                            style: AppStyles.text14(context),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              isLiked
                                                  ? Icons.thumb_up
                                                  : Icons.thumb_up_outlined,
                                              color: isLiked
                                                  ? Colors.blue
                                                  : Colors.black,
                                            ),
                                            onPressed: () {
                                              toggleLike(
                                                  itemId: snapshot
                                                      .data!.docs[index].id);
                                            },
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      settings: RouteSettings(
                                                          name: FirebaseAuth
                                                              .instance
                                                              .currentUser!
                                                              .displayName,
                                                          arguments: snapshot
                                                              .data!
                                                              .docs[index]
                                                              .id),
                                                      builder: (context) {
                                                        return const Commentview();
                                                      }));
                                            },
                                            child: Text(
                                              S.of(context).Comments,
                                              style: AppStyles.text14(context),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
