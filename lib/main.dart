import 'package:craftsportal/Features/SplashView/Presentation/SplashView.dart';
import 'package:craftsportal/generated/l10n.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DevicePreview(builder: (context) => const craftsportal()));
}

class craftsportal extends StatefulWidget {
  const craftsportal({super.key});

  @override
  State<craftsportal> createState() => _craftsportalState();
}

class _craftsportalState extends State<craftsportal> {
  Locale _locale = const Locale('en');
  void _changeLanguage(String languageCode) {
    setState(() {
      _locale = Locale(languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: SplashView(changeLanguage: _changeLanguage),
    );
  }
}
