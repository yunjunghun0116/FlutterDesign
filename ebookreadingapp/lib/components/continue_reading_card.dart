import 'package:flutter/material.dart';

import '../constants.dart';
//TODO 여기 설정하기
class ContinueReadingCard extends StatelessWidget {
  const ContinueReadingCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 30,
            color: const Color(0xFFD3D3D3).withOpacity(0.8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Crushing & Influence',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Gary Venchuk',
                            style: TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                          SizedBox(height: 5),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Chapter 7 of 10',
                              style: TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/book-1.png',
                      width: 55,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 7,
              width: size.width * 0.6,
              decoration: BoxDecoration(
                color: kProgressIndicatorColor,
                borderRadius: BorderRadius.circular(7),
              ),
            )
          ],
        ),
      ),
    );
  }
}

