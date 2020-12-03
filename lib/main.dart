import 'package:cleaning_app_ui/login/login_page1.dart';
import 'package:cleaning_app_ui/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.deepOrangeAccent,
        primaryColor: Colors.deepPurple,
      ),
      home: loginPage1()
    );
  }
}

