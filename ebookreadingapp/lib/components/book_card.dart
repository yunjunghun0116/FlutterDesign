import 'package:flutter/material.dart';
import '../constants.dart';
import 'book_rating.dart';
import 'flow_rounded_button.dart';

class BookCard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final double rating;
  final Function pressDetails;
  final Function pressRead;
  const BookCard({
    Key? key, required this.image, required this.title, required this.author, required this.rating, required this.pressDetails, required this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right:20,top: 20,bottom: 20),
      width: 200,
      height: 250,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 3,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(image, width: 150),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                BookRating(score: rating),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 100,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: const TextStyle(color: kBlackColor),
                        children: [
                          TextSpan(
                            text: title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: author,
                            style: const TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        padding:
                        const EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        child: const Text('Details'),
                      ),
                      Expanded(
                        child: FlowRoundedButton(
                          title: 'Read',
                          press: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
