// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: WelcomeScreen(),
    );
  }
}