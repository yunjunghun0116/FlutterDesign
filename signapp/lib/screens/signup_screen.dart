import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signapp/components/input_field_container.dart';
import 'package:signapp/components/rounded_button.dart';
import 'package:signapp/utilities/connect_server.dart';

import '../constants.dart';
import 'login_screen.dart';
import 'main_screen.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final RequestToServer rts = RequestToServer();
  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late SharedPreferences _sharedPreferences;
    SharedPreferences.getInstance()
        .then((value) => {_sharedPreferences = value});
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
                'assets/images/signup_top.png',
                width: size.width * 0.4,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/login_bottom.png',
                width: size.width * 0.5,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'SIGNUP',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  SvgPicture.asset(
                    'assets/icons/signup.svg',
                    height: size.height * 0.35,
                  ),
                  InputFieldContainer(
                    size: size,
                    icon: const Icon(Icons.person, color: kPrimaryColor),
                    hintText: 'Email',
                    controller: _emailController,
                  ),
                  InputFieldContainer(
                    size: size,
                    icon: const Icon(Icons.lock, color: kPrimaryColor),
                    hintText: 'Password',
                    controller: _passwordController,
                    suffixIcon:
                        const Icon(Icons.visibility, color: kPrimaryColor),
                    isSecure: true,
                  ),
                  RoundedButton(
                    size: size,
                    onClicked: () async {
                      Map<String, dynamic> res =
                          await rts.registerWithEmailAndPassword(
                              _emailController.text, _passwordController.text);
                      if (res['success'] == true) {
                        await _sharedPreferences.setString(
                            'userId', res['userInfo']['_id']);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const MainScreen();
                        }));
                      } else {
                        print(res['msg']);
                      }
                    },
                    title: 'SIGN UP',
                    color: kPrimaryColor,
                    fontColor: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: kPrimaryColor),
                        children: [
                          TextSpan(text: 'Already have an Account? '),
                          TextSpan(
                              text: 'Sign In',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: size.width * 0.8,
                    child: Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Color(0xFFD9D9D9),
                            height: 20,
                          ),
                        ),
                        Text(
                          'OR',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xFFD9D9D9),
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SocialIcon(
                          iconSrc: 'assets/icons/facebook.svg',
                          onClicked: () {},
                        ),
                        SocialIcon(
                          iconSrc: 'assets/icons/twitter.svg',
                          onClicked: () {},
                        ),
                        SocialIcon(
                          iconSrc: 'assets/icons/google-plus.svg',
                          onClicked: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function onClicked;
  const SocialIcon({
    Key? key,
    required this.iconSrc,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClicked();
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 30,
          width: 30,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
