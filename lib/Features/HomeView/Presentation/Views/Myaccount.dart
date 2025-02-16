import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/HomeView/Presentation/Views/Accountinformation.dart';
import 'package:craftsportal/Features/HomeView/Presentation/Views/Editaccount.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Myaccount extends StatelessWidget {
  const Myaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Account",
          style:
              AppStyles.text20(context).copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Editaccount();
                  }));
                },
                child: Text("Edit", style: AppStyles.text16(context))),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Image.network(
                  "https://th.bing.com/th/id/OIP.hGSCbXlcOjL_9mmzerqAbQHaHa?w=197&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
            ),
            title: Text(
              FirebaseAuth.instance.currentUser!.displayName!,
              style: AppStyles.text20(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Italy",
              style: AppStyles.text14(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                  child: Text(
                    " Hi I am ${FirebaseAuth.instance.currentUser!.displayName} a plumbing professional for 10 years and ready..",
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.text16(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Accountinformation(),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
                Text(
                  "Payment",
                  style: AppStyles.text20(context)
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://ts3.mm.bing.net/th?id=OIP.FC9fs3egIjCNWRB90p3hdgHaFO&pid=15.1",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    Column(
                      children: [
                        Text(
                          "Visa card",
                          style: AppStyles.text16(context)
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "48****1562",
                          style: AppStyles.text16(context)
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(Icons.add),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    Text(
                      "Add new card",
                      style: AppStyles.text16(context)
                          .copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
