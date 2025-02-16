import 'package:craftsportal/Core/AppStyles.dart';
import 'package:flutter/material.dart';

class ServiceProviderinformation extends StatelessWidget {
  final double width;

  const ServiceProviderinformation({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * 0.24, right: 8),
          child: const Text(
            "10 years experience in maintenance of everything related to plumbing and holds a certificate of appreciation for my great accomplishments",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.20, right: 8),
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.location_on)),
              Text(
                "St 100 Damietta",
                style: AppStyles.text14(context),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.25, right: 8),
          child: Row(
            children: [
              Text(
                "6 Km",
                style: AppStyles.text14(context),
              ),
              const SizedBox(width: 20),
              const CircleAvatar(radius: 3, backgroundColor: Colors.green),
              const SizedBox(width: 5),
              Text(
                "online",
                style: AppStyles.text14(context),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: width * 0.25, right: 8),
          child: Row(
            children: [
              Container(
                width: width * 0.2,
                height: MediaQuery.sizeOf(context).height * 0.05,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(6)),
                child: const Center(child: Text("Follow")),
              ),
              SizedBox(width: width * 0.05),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star_border,
                    size: width * 0.05,
                  );
                }),
              ),
              SizedBox(width: width * 0.05),
              Text(
                "(2311)",
                style: AppStyles.text14(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
