import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinecourse/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
                image: AssetImage('assets/images/ux_big.png'),
                alignment: Alignment.topRight)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/icons/arrow-left.svg'),
                      SvgPicture.asset('assets/icons/more-vertical.svg'),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      color: kBestSellerColor,
                      padding: const EdgeInsets.only(
                          left: 10, top: 5, right: 20, bottom: 5),
                      child: Text(
                        'BestSeller'.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Design Thinking', style: kHeadingextStyle),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: SvgPicture.asset('assets/icons/person.svg'),
                      ),
                      const Text('18K', style: kSubtitleTextStyle),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 5),
                        child: SvgPicture.asset('assets/icons/star.svg'),
                      ),
                      const Text('4.5', style: kSubtitleTextStyle),
                    ],
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    //여러개의 text중 일부분에만 스타일주고싶을때
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$ 50',
                          style: kHeadingextStyle.copyWith(fontSize: 32),
                        ),
                        TextSpan(
                          text: '\$ 78',
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Course Content', style: kHeadingextStyle),
                        SizedBox(height: 30),
                        CourseContent(
                          number: '01',
                          duration: 5,
                          title: 'Welcome to the Course',
                          isDone: true,
                        ),
                        CourseContent(
                          number: '02',
                          duration: 19,
                          title: 'Design Thinking - Intro',
                          isDone: true,
                        ),
                        CourseContent(
                          number: '03',
                          duration: 15,
                          title: 'Design Thinking Process',
                          isDone: false,
                        ),
                        CourseContent(
                          number: '04',
                          duration: 6,
                          title: 'Customer Perspective',
                          isDone: false,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0,4),
                            blurRadius: 50,
                            color: kTextColor.withOpacity(0.1),
                          ),
                        ]
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.all(14),
                            width: 80,
                            height: 56,
                            decoration:  BoxDecoration(
                              color: const Color(0xFFFFEDEE),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: SvgPicture.asset('assets/icons/shopping-bag.svg'),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 56,
                              decoration:  BoxDecoration(
                                color: kBlueColor,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child:  Text('But Now',style: kSubtitleTextStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
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
    );
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final int duration;
  final String title;
  final bool isDone;
  const CourseContent({
    Key? key,
    required this.number,
    required this.duration,
    required this.title,
    required this.isDone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Text(
            number,
            style: TextStyle(color: kTextColor.withOpacity(0.15), fontSize: 32),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$title \n',
                    style: kSubtitleTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                    ),
                  ),
                  TextSpan(
                    text: '$duration min',
                    style: TextStyle(
                      color: kTextColor.withOpacity(0.5),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kGreenColor.withOpacity(isDone ? 1 : 0.5),
          ),
          child: const Icon(Icons.play_arrow, color: Colors.white),
        ),
      ],
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
