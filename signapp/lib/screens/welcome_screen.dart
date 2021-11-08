import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signapp/components/rounded_button.dart';
import 'package:signapp/constants.dart';
import 'package:signapp/screens/login_screen.dart';
import 'package:signapp/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: size.width * 0.2,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'WELCOME TO EDU',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  height: size.height * 0.4,
                ),
                const SizedBox(height: 20),
                RoundedButton(
                  size: size,
                  title: 'LOGIN',
                  onClicked: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LoginScreen();
                    }));
                  },
                  color: kPrimaryColor,
                  fontColor: Colors.white,
                ),
                RoundedButton(
                    size: size,
                    title: 'SIGNUP',
                    onClicked: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignUpScreen();
                      }));
                    },
                    color: kPrimaryLightColor,
                    fontColor: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
