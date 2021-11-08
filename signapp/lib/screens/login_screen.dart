import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signapp/components/input_field_container.dart';
import 'package:signapp/components/rounded_button.dart';
import 'package:signapp/constants.dart';
import 'package:signapp/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);

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
                width: size.width * 0.4,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/login_bottom.png',
                width: size.width * 0.4,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'LOGIN',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  SvgPicture.asset(
                    'assets/icons/login.svg',
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
                    onClicked: () {},
                    title: 'LOGIN',
                    color: kPrimaryColor,
                    fontColor: Colors.white,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignUpScreen();
                      }));
                    },
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: kPrimaryColor),
                        children: [
                          TextSpan(text: 'Don\'t have an Account? '),
                          TextSpan(text: 'Sign Up',style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
