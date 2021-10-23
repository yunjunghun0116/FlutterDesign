import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinecourse/constants.dart';
import 'package:onlinecourse/model/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/menu.svg'),
                Image.asset('assets/images/user.png'),
              ],
            ),
            const SizedBox(height: 30),
            const Text('Hey Alex,', style: kHeadingextStyle),
            const Text('Find a course you want to learn',
                style: kSubheadingextStyle),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset('assets/icons/search.svg'),
                  ),
                  const Flexible(
                    //Row안에 textfield삽입할떄 Flexible 사용
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search For Anything',
                        border: InputBorder.none,
                      ),
                      cursorColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Category', style: kTitleTextStyle),
                Text('See all',
                    style: kSubtitleTextStyle.copyWith(color: kBlueColor)),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(0),//위로 올려주기위해
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    height: index.isEven ? 200 : 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(categories[index].name, style: kTitleTextStyle),
                        Text(
                          '${categories[index].numOfCourses} Courses',
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
