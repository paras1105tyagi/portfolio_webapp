import 'package:flutter/material.dart';
import 'package:paras_tyagi_potfolio/mobile/landing_page_mobile.dart';
import 'package:paras_tyagi_potfolio/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return LandingPageWeb();
          } else {
            return LandingPageMobile();
          }
        },
      ),
    );
  }
}
