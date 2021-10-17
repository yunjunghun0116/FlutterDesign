import 'package:covid19app/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: "Poppins", //여기서 전반적인 font 작업
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: kBodyTextColor),
          )),
      home: const HomeScreen(),
    );
  }
}

