import 'package:flutter/material.dart';
import '../constants.dart';
import 'book_rating.dart';
import 'flow_rounded_button.dart';

class BestDayCard extends StatelessWidget {
  final String dayTitle;
  final String bookTitle;
  final String bookAuthor;
  final double rating;
  final String explanation;
  final String image;
  final Function press;
  const BestDayCard({
    Key? key,
    required this.size, required this.dayTitle, required this.bookTitle, required this.bookAuthor, required this.rating, required this.explanation, required this.image, required this.press,
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
                  Text(
                    dayTitle,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    bookTitle,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    bookAuthor,
                    style: const TextStyle(
                      fontSize: 12,
                      color: kLightBlackColor,
                    ),
                  ),
                  Row(
                    children: [
                      BookRating(score: rating),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          explanation,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
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
              image,
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
                press: () {
                  press();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
