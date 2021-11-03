import 'package:covid19_green/components/custom_app_bar.dart';
import 'package:covid19_green/components/info_card.dart';
import 'package:covid19_green/constants.dart';
import 'package:covid19_green/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                children: [
                  InfoCard(
                    title: 'Confirmed Cases',
                    effectedNum: 1062,
                    iconColor:const  Color(0xFFFF8C00),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const DetailScreen();
                      }));
                    },
                  ),
                  InfoCard(
                    title: 'Total Death',
                    effectedNum: 75,
                    iconColor: const Color(0xFFFF2D55),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const DetailScreen();
                      }));
                    },
                  ),
                  InfoCard(
                    title: 'Total Recovered',
                    effectedNum: 689,
                    iconColor: const Color(0xFF50E3C2),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const DetailScreen();
                      }));
                    },
                  ),
                  InfoCard(
                    title: 'New Cases',
                    effectedNum: 52,
                    iconColor: const Color(0xFF5856D6),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const DetailScreen();
                      }));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Preventions',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 20),
                  const PreventionsRow(),
                  const SizedBox(height: 40),
                  const HelpCard(),
                  const HelpCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreventionsRow extends StatelessWidget {
  const PreventionsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        PreventionCard(
          image: 'assets/icons/hand_wash.svg',
          title: 'Wash Hands',
        ),
        PreventionCard(
          image: 'assets/icons/use_mask.svg',
          title: 'Use Masks',
        ),
        PreventionCard(
          image: 'assets/icons/Clean_Disinfect.svg',
          title: 'Clean Disinfect',
        ),
      ],
    );
  }
}

class HelpCard extends StatelessWidget {
  const HelpCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.4,
              top: 20,
              right: 20,
            ),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF60BE93),
                  Color(0xFF1B8D59),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Dial 119 for \nMedical Help!\n',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  TextSpan(
                    text: 'If any symptoms appear',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SvgPicture.asset('assets/icons/nurse.svg'),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: SvgPicture.asset('assets/icons/virus.svg'),
          ),
        ],
      ),
    );
  }
}

class PreventionCard extends StatelessWidget {
  final String image;
  final String title;
  const PreventionCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}
