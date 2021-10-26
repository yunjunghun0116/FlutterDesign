import 'package:ebookreadingapp/components/best_day_card.dart';
import 'package:ebookreadingapp/components/continue_reading_card.dart';
import 'package:ebookreadingapp/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../components/book_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main_page_bg.png'),
            alignment: Alignment.topRight,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.05),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline5,
                  children: const [
                    TextSpan(text: 'What are you \nreading'),
                    TextSpan(
                        text: 'Today?',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookCard(
                      image: 'assets/images/book-1.png',
                      title: 'Crushing & Influence\n',
                      author: 'Gary Venchuk',
                      rating: 4.9,
                      pressDetails: () {},
                      pressRead: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const DetailScreen();
                        }));
                      },
                    ),
                    BookCard(
                      image: 'assets/images/book-2.png',
                      title: 'Top Ten Business Hacks\n',
                      author: 'Herman Joel',
                      rating: 4.8,
                      pressDetails: () {},
                      pressRead: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const DetailScreen();
                        }));
                      },
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: const [
                        TextSpan(text: 'Best of the '),
                        TextSpan(
                            text: 'day',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  BestDayCard(
                    size: size,
                    dayTitle: 'New York Time Best \nFor 11th March 2020',
                    bookTitle: 'How To Win \nFriends & Influence',
                    bookAuthor: 'Gary Venchuk',
                    explanation:
                        'When the earth was flat and everyone wanted to win the game of the best and people wow',
                    rating: 5.0,
                    image: 'assets/images/book-3.png',
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DetailScreen();
                      }));
                    },
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline5,
                  children: const [
                    TextSpan(text: 'Continue '),
                    TextSpan(
                      text: 'reading...',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ContinueReadingCard(
                size: size,
                title: 'Crushing & Influence',
                author: 'Gary Venchuk',
                image: 'assets/images/book-1.png',
                progress: 'Chapter 7 of 10',
              ),
              ContinueReadingCard(
                size: size,
                title: 'Crushing & Influence',
                author: 'Gary Venchuk',
                image: 'assets/images/book-1.png',
                progress: 'Chapter 7 of 10',
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
