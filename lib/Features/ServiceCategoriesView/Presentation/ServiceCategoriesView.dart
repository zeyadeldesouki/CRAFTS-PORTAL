import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/HomeView/Presentation/Views/HomeView.dart';
import 'package:flutter/material.dart';

class ServiceCategoriesView extends StatelessWidget {
  const ServiceCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Service Categories",
          style: AppStyles.text20(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Homeview();
                    }));
                  },
                  child: Text(
                    "Plumber",
                    style: AppStyles.text20(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  )),
            ),
            ListTile(
              title: Text(
                "Carpenter",
                style: AppStyles.text20(context)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                "Electrician",
                style: AppStyles.text20(context)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
