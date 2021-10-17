import 'package:covid19app/components/counter.dart';
import 'package:covid19app/components/my_header.dart';
import 'package:covid19app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String value = 'Korea';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 이미지 와 메뉴바
            const MyHeader(image: 'assets/icons/Drcorona.svg',textTop: 'All you need',textBottom: 'is stay at home',),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Color(0xFFE5E5E5)),
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/maps-and-flags.svg'),
                  const SizedBox(width: 20),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      underline: const SizedBox(),
                      icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                      value: value,
                      items: [
                        'Korea',
                        'Indonesia',
                        'Bangladesh',
                        'United States',
                        'Japan'
                      ].map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          value = val as String;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Case Update\n',
                              style: kTitleTextstyle,
                            ),
                            TextSpan(
                              text: 'Newest update March 28',
                              style: TextStyle(
                                color: kTextLightColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const InfoScreen();
                          }));
                        },
                        child: const Text(
                          'See details',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Counter(
                          number: 1046,
                          color: kInfectedColor,
                          title: 'Infected',
                        ),
                        Counter(
                          number: 87,
                          color: kDeathColor,
                          title: 'Deaths',
                        ),
                        Counter(
                          number: 46,
                          color: kRecovercolor,
                          title: 'Recovered',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text(
                        'Spread of Virus',
                        style: kTitleTextstyle,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const InfoScreen();
                          }));
                        },
                        child: const Text(
                          'See details',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.all(20),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 30,
                            color: kShadowColor),
                      ],
                    ),
                    child: Image.asset(
                      'assets/images/map.png',
                      fit: BoxFit.contain,
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

