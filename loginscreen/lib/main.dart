import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'constants.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
            headline6:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            bodyText1: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            button: TextStyle(color: kPrimaryColor)),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white.withOpacity(0.3))),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
