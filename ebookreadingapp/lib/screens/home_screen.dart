import 'package:flutter/material.dart';

import '../components/book_rating.dart';
import '../components/flow_rounded_button.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main_page_bg.png'),
            alignment: Alignment.topRight,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.05),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline4,
                    children: const [
                      TextSpan(text: 'What are you \nreading'),
                      TextSpan(
                          text: 'Today?',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
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
                              blurRadius: 30,
                              color: kShadowColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset('assets/images/book-1.png', width: 150),
                    Positioned(
                      top: 35,
                      right: 10,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border),
                          ),
                          const BookRating(score: 4.9),
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
                                text: const TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text: 'Crushing & Influence\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
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
                                    radius: 30,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

