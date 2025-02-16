// ignore_for_file: camel_case_types

import 'package:craftsportal/Features/SplashView/Presentation/SplashView.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DevicePreview(builder:(context)=> const craftsportal()));
}

class craftsportal extends StatelessWidget {
  const craftsportal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}