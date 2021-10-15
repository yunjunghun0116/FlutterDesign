import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddeliveryapp/constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/icons/backward.svg',
                    height: 10,
                  ),
                ),
                SvgPicture.asset('assets/icons/menu.svg', height: 10),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.all(10),
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/image_1_big.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Vegan salad bowl\n',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: 'With red tomato',
                        style: TextStyle(color: kTextColor.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$20',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 25),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Add to bag',
                          style: Theme.of(context).textTheme.button,
                        ),
                        const SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/icons/forward.svg',
                          height: 10,
                        ),
                      ],
                    ),
                  ),
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
                          padding: const EdgeInsets.all(15),
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: SvgPicture.asset('assets/icons/bag.svg'),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 15,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              '0',
                              style: Theme.of(context)
                                  .textTheme
                                  .button!
                                  .copyWith(color: kPrimaryColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
