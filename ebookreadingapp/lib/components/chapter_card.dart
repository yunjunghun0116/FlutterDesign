import 'package:flutter/material.dart';

import '../constants.dart';

class ChapterCard extends StatelessWidget {
  final int chapterNumber;
  final String title;
  final String subTitle;
  final Function press;
  const ChapterCard({
    Key? key,
    required this.title,
    required this.subTitle, required this.chapterNumber, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            offset: const Offset(10, 10),
            blurRadius: 20,
            color: const Color(0xFFD3D3D3).withOpacity(0.8),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(color: kBlackColor),
              children: [
                TextSpan(
                  text: 'Chapter $chapterNumber : $title\n',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: subTitle,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              press();
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}