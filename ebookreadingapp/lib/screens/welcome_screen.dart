import 'package:flutter/material.dart';

import '../components/rounded_button.dart';
import '../screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Bitmap.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline4,
                  children: const [
                    TextSpan(
                      text: 'E-Book App\n',
                    ),
                    TextSpan(
                      text: 'Let\'s Go',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: RoundedButton(
                  title: 'Start Reading',
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const HomeScreen();
                    }));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

