import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;
  const FoodCard({
    Key? key,
    required this.title,
    required this.ingredient,
    required this.image,
    required this.price,
    required this.calories,
    required this.description,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        press();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        width: 270,
        height: 400,
        child: Stack(
          children: [
            //하나의 큰 백그라운드
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 250,
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(0.1),
                ),
              ),
            ),
            //원형의 이미지 백그라운드
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            //이미지
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                width: 270,
                height: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    )),
              ),
            ),
            Positioned(
              top: 80,
              right: 20,
              child: Text(
                '\$ $price',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 200,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'With $ingredient',
                      style: TextStyle(color: kTextColor.withOpacity(0.4)),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: kTextColor.withOpacity(0.7)), //8:26
                    ),
                    Text(calories),
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
