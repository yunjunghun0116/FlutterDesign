import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class MyHeader extends StatelessWidget {
  final String image;
  final String textTop;
  final String textBottom;
  const MyHeader({
    Key? key, required this.image, required this.textTop, required this.textBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: const EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            //색감 설정
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFF3383CD), Color(0xFF11249F)],
          ),
          image: DecorationImage(
              image: AssetImage('assets/images/virus.png')),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    image,
                    width: 230,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 20,
                    right: 0,
                    child: Text(
                      '$textTop \n$textBottom',
                      style: kHeadingTextStyle.copyWith(
                          color: Colors.white),
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



class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //path.line to 를 통해 시작/끝지점 설정이 가능하고
    //quadraticBezierTo를 통해 굴곡을 나타낼 수 있다.
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
