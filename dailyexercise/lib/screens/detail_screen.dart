import 'package:dailyexercise/components/bottom_nav_bar.dart';
import 'package:dailyexercise/components/search_bar.dart';
import 'package:dailyexercise/components/session_card.dart';
import 'package:dailyexercise/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.45,
              decoration: const BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/meditation_bg.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.05),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '3-10 Min Course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * 0.6,
                      child: const Text(
                        'Live happier and healthier by learning the fundementals of meditation and mindfulness',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: const SearchBar(),
                    ),
                    Wrap(
                      spacing: 20, //좌우 공간여백
                      runSpacing: 20, //상하 공간여백
                      children: [
                        SessionCard(
                          sessionNum: 1,
                          isDone: true,
                          onPressed: () {},
                        ),
                        SessionCard(
                          sessionNum: 2,
                          onPressed: () {},
                        ),
                        SessionCard(
                          sessionNum: 3,
                          onPressed: () {},
                        ),
                        SessionCard(
                          sessionNum: 4,
                          onPressed: () {},
                        ),
                        SessionCard(
                          sessionNum: 5,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 15),
                            blurRadius: 20,
                            spreadRadius: -10,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              'assets/icons/Meditation_women_small.svg'),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Basic 2',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const Text('Start your deepen you practice'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              'assets/icons/Lock.svg',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
