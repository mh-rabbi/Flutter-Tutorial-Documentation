import 'package:classico/first_page.dart';
import 'package:classico/home_page.dart';
import 'package:classico/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

// Navigation
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
      },
    );
  }
}
