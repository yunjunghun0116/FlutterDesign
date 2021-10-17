import 'package:covid19app/components/my_header.dart';
import 'package:covid19app/constant.dart';
import 'package:covid19app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyHeader(
              image: 'assets/icons/coronadr.svg',
              textTop: 'Get to know',
              textBottom: 'Aboud Covid-19',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Symptoms',
                    style: kTitleTextstyle,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SymptomCard(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                        isActive: true,
                      ),
                      SymptomCard(
                        image: 'assets/images/caugh.png',
                        title: 'Caugh',
                        isActive: false,
                      ),
                      SymptomCard(
                        image: 'assets/images/fever.png',
                        title: 'Fever',
                        isActive: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Prevention', style: kTitleTextstyle),
                  const SizedBox(height: 20),
                  const PreventCard(
                    image: 'assets/images/wear_mask.png',
                    title: 'Wear face mask',
                    text:
                        'Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks',
                  ),
                  const PreventCard(
                    image: 'assets/images/wash_hands.png',
                    title: 'Wash your hands',
                    text:
                    'Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks',
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 24,
                      color: kShadowColor)
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                width: MediaQuery.of(context).size.width - 170,
                height: 136,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const HomeScreen();
                          }));
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            'assets/icons/forward.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const SymptomCard({
    Key? key,
    required this.image,
    required this.title,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 20,
                  color: kActiveShadowColor,
                )
              : BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 5,
                  color: kShadowColor),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 90,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
