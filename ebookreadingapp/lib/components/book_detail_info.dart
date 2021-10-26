import 'package:ebookreadingapp/components/rounded_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'book_rating.dart';

class BookInfo extends StatelessWidget {
  final String title;
  final String explanation;
  final double rating;
  final String image;
  const BookInfo({
    Key? key,
    required this.title,
    required this.explanation,
    required this.rating,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          explanation,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: const TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        RoundedButton(
                            title: 'Read', verticalPadding: 10, press: () {}),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      const BookRating(score: 4.9),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          image,
          height: 200,
        ),
      ],
    );
  }
}
