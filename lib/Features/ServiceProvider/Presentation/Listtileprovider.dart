import 'package:craftsportal/Core/AppStyles.dart';
import 'package:flutter/material.dart';

class Listtileofserviceprovider extends StatelessWidget {
  const Listtileofserviceprovider({
    super.key, required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  CircleAvatar(
        radius: 30,
        child: Image.network("https://th.bing.com/th/id/OIP.hGSCbXlcOjL_9mmzerqAbQHaHa?w=197&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
      ),
      title: Text(
        name,
        style: AppStyles.text20(context).copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Plumber",
        style: AppStyles.text14(context),
      ),
    );
  }
}
