import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Function press;
  final double verticalPadding;
  final double fontSize;
  const RoundedButton({
    Key? key,
    required this.title,
    required this.press,
    this.verticalPadding = 20,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 20),
        padding:
        EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 30,
              color: const Color(0xFF666666).withOpacity(0.3),
            ),
          ],
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
