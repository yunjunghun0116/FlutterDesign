import 'package:flutter/material.dart';

import '../constants.dart';
import 'book_rating.dart';
import 'flow_rounded_button.dart';

//TODO 여기 설정하기
class BestDayCard extends StatelessWidget {
  const BestDayCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
              EdgeInsets.only(left: 20, top: 20, right: size.width * 0.3),
              height: 180,
              width: size.width - 40,
              decoration: BoxDecoration(
                color: const Color(0xFFEAEAEA).withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New York Time Best \nFor 11th March 2020',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'How To Win \nFriends & Influence',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Gary Venchuk',
                    style: TextStyle(
                      fontSize: 12,
                      color: kLightBlackColor,
                    ),
                  ),
                  Row(
                    children: const [
                      BookRating(score: 5.0),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'When the earth was flat and everyone wanted to win the game of the best and people wow',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/images/book-3.png',
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: size.width * 0.3,
              height: 40,
              child: FlowRoundedButton(
                title: 'Read',
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
