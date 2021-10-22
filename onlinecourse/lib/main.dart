import 'package:flutter/material.dart';
import 'package:onlinecourse/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Design',
      theme: ThemeData(
      ),
      home: const HomeScreen(),
    );
  }
}
