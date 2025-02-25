import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/Features/ServiceProvider/Presentation/serviceproviderviewbody.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:flutter/material.dart';

class ServiceProvider extends StatelessWidget {
  const ServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    var name = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
        ],
        title: Align(
            alignment: Alignment.center,
            child: Text(
              S.of(context).ServiceProvider,
              style: AppStyles.text20(context),
            )),
      ),
      body:  serviceproviderviewbody(
        name: name,
      ),
    );
  }
}
