import 'package:flutter/material.dart';
import '../constants.dart';
class ContinueReadingCard extends StatelessWidget {
  final String title;
  final String author;
  final String progress;
  final String image;
  const ContinueReadingCard({
    Key? key,
    required this.size, required this.title, required this.author, required this.progress, required this.image,
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
            offset: const Offset(5, 10),
            blurRadius: 3,
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
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            author,
                            style: const TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              progress,
                              style: const TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    Image.asset(
                      image,
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

