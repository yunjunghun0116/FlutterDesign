import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddeliveryapp/screens/detail_screen.dart';
import '../components/category_title.dart';
import '../components/food_card.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 10,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Simple way to find \nTasty food',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CategoryTitle(title: "All", active: true),
                CategoryTitle(title: "Italian"),
                CategoryTitle(title: "Asian"),
                CategoryTitle(title: "Chinese"),
                CategoryTitle(title: "Burgers"),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:  [
                FoodCard(
                  press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const DetailScreen();
                    }));
                  },
                  title: "Vegan salad bowl",
                  ingredient: 'red tomato',
                  image: "assets/images/image_1.png",
                  price: 20,
                  calories: "420Kcal",
                  description:
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                FoodCard(
                  press: (){},
                  title: "Vegan salad bowl",
                  ingredient: 'red tomato',
                  image: "assets/images/image_2.png",
                  price: 20,
                  calories: "420Kcal",
                  description:
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(0.25),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor,
                        ),
                        child: SvgPicture.asset('assets/icons/plus.svg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


