import 'package:flutter/material.dart';
import 'package:insta/screens/response/mobile_screen_layout.dart';
import 'package:insta/screens/response/responsive_layout.dart';
import 'package:insta/screens/response/web_screen_layout.dart';
import 'package:insta/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor
      ),
      home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(), mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}