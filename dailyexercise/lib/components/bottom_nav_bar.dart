import 'package:flutter/material.dart';

import 'bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30,top: 10,right: 30,bottom: 15),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            image: 'assets/icons/calendar.svg',
            title: 'Today',
            onPressed: () {},
          ),
          BottomNavItem(
            image: 'assets/icons/gym.svg',
            title: 'All Excercise',
            onPressed: () {},
            isActive: true,
          ),
          BottomNavItem(
            image: 'assets/icons/Settings.svg',
            title: 'Settings',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

