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
      debugShowCheckedModeBanner: false, //우측상단 디버그표시 없앰
      title: 'Course Design',
      theme: ThemeData(
      ),
      home: const HomeScreen(),
    );
  }
}

