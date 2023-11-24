import 'package:flutter/material.dart';
import 'package:pinterest/HomeScrean/navigatorBar.dart';
import 'package:pinterest/Register/LoginPage/loginPage.dart';
import 'package:pinterest/Register/registerWelcomPage/welcomePage.dart';
import 'package:pinterest/example_database.dart';
import 'package:pinterest/navigatorrail.dart';
import 'package:pinterest/silver.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
  late SharedPreferences prefs;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: Keyinigi(),
     //home: NavRail(),
     home: LoginPage(),
    );
  }
}
