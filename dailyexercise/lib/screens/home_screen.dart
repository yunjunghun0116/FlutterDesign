import 'package:dailyexercise/components/bottom_nav_bar.dart';
import 'package:dailyexercise/components/category_card.dart';
import 'package:dailyexercise/components/search_bar.dart';
import 'package:dailyexercise/constants.dart';
import 'package:dailyexercise/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'Good Morning \nJunghun',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  const SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        CategoryCard(
                          image: 'assets/icons/Hamburger.svg',
                          title: 'Diet Recommendation',
                          onPressed: () {},
                        ),
                        CategoryCard(
                          image: 'assets/icons/Excercise.svg',
                          title: 'Kegel \nExcercise',
                          onPressed: () {},
                        ),
                        CategoryCard(
                          image: 'assets/icons/Meditation.svg',
                          title: 'Meditation',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const DetailScreen();
                            }));
                          },
                        ),
                        CategoryCard(
                          image: 'assets/icons/yoga.svg',
                          title: 'Yoga',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

