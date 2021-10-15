import 'package:flutter/material.dart';

import '../constants.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          headline6: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontWeight: FontWeight.bold),
          bodyText1: TextStyle()
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

