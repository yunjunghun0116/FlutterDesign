import 'package:flutter/material.dart';

import '../constants.dart';

class InputFieldContainer extends StatelessWidget {
  final Size size;
  final Icon icon;
  final String hintText;
  final TextEditingController controller;
  final Icon? suffixIcon;
  final bool isSecure;
  const InputFieldContainer({
    Key? key,
    required this.size, required this.icon, required this.controller, required this.hintText, this.suffixIcon,this.isSecure = false
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding:
      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: controller,
        obscureText: isSecure,
        decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }

}
