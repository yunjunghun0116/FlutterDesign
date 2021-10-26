import 'package:ebookreadingapp/components/book_detail_info.dart';
import 'package:ebookreadingapp/components/book_rating.dart';
import 'package:ebookreadingapp/components/chapter_card.dart';
import 'package:ebookreadingapp/components/rounded_button.dart';
import 'package:ebookreadingapp/constants.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        const BookInfo(
                            title: 'Crushing &\nInfluence',
                            explanation:
                                'When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.',
                            rating: 4.9,
                            image: 'assets/images/book-1.png'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.4 - 50,
                  ),
                  child: Column(
                    children: [
                      ChapterCard(
                        chapterNumber: 1,
                        title: 'Money',
                        subTitle: 'Life is about change',
                        press: () {},
                      ),
                      ChapterCard(
                        chapterNumber: 2,
                        title: 'Power',
                        subTitle: 'Everything loves power',
                        press: () {},
                      ),
                      ChapterCard(
                        chapterNumber: 3,
                        title: 'Influence',
                        subTitle: 'Influence easily like never before',
                        press: () {},
                      ),
                      ChapterCard(
                        chapterNumber: 4,
                        title: 'Win',
                        subTitle: 'Winning is what matters',
                        press: () {},
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: kBlackColor, fontSize: 24),
                      children: [
                        TextSpan(text: 'You might also '),
                        TextSpan(
                          text: 'Like...',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      const SizedBox(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 20, right: 150, top: 20),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    color: kBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'How To Win \nFriends & Influence\n',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Gary Venchuk',
                                      style: TextStyle(
                                        color: kLightBlackColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  const BookRating(score: 4.9),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: RoundedButton(
                                      title: 'Read',
                                      verticalPadding: 10,
                                      press: (){},
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child:
                            Image.asset('assets/images/book-3.png', width: 150),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
