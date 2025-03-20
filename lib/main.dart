import 'package:flutter/material.dart';
import 'package:login/login_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login page',
      home: LoginPage()
    );
  }
}