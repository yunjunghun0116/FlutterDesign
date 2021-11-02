import 'package:covid19_green/components/custom_app_bar.dart';
import 'package:covid19_green/components/info_card.dart';
import 'package:covid19_green/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.05),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Wrap(
          runSpacing: 20,
          spacing: 20,
          children: const [
            InfoCard(
              title: 'Confirmed Cases',
              effectedNum: 1062,
              iconColor: Color(0xFFFF8C00),
            ),
            InfoCard(
              title: 'Total Death',
              effectedNum: 75,
              iconColor: Color(0xFFFF2D55),
            ),
            InfoCard(
              title: 'Total Recovered',
              effectedNum: 689,
              iconColor: Color(0xFF50E3C2),
            ),
            InfoCard(
              title: 'New Cases',
              effectedNum: 52,
              iconColor: Color(0xFF5856D6),
            ),
          ],
        ),
      ),
    );
  }
}

