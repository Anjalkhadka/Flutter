
import 'package:classtest/view/loginview.dart';
import 'package:classtest/view/signup.dart';
import 'package:flutter/material.dart';

import '../model/user.dart';
import 'dashboard_view.dart';

List<User> allUsers = [];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(users: allUsers),
        '/signup': (context) => SignupPage(users: allUsers),
        '/dashboard': (context) => const DashboardPage(),
      },
    );
  }
}