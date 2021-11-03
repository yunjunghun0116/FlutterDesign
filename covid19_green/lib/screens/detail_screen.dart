import 'package:covid19_green/components/weekly_chart.dart';
import 'package:covid19_green/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 20),
                    blurRadius: 50,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'New Cases',
                        style: TextStyle(
                          color: kTextMediumColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      SvgPicture.asset('assets/icons/more.svg'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '547',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: kPrimaryColor, height: 1.2),
                      ),
                      const Text(
                        '5.9%',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                      SvgPicture.asset('assets/icons/increase.svg'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'From Health Center',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const WeeklyChart(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextWithPercentage(
                        title: 'From Last Week',
                        percent: 6.43,
                      ),
                      TextWithPercentage(
                        title: 'Recovery Rate',
                        percent: 9.43,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 20),
                    blurRadius: 50,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        'Global Map',
                        style: const TextStyle(fontSize: 15),
                      ),
                      SvgPicture.asset('assets/icons/more.svg'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SvgPicture.asset('assets/icons/map.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextWithPercentage extends StatelessWidget {
  final String title;
  final double percent;
  const TextWithPercentage({
    Key? key,
    required this.title,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$percent%\n',
            style: const TextStyle(
              fontSize: 20,
              color: kPrimaryColor,
            ),
          ),
          TextSpan(
            text: title,
            style: const TextStyle(color: kTextMediumColor, height: 1.5),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: kPrimaryColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
