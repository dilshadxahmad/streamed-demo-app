import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: SvgPicture.asset(homeicon),
          ),
          BottomNavigationBarItem(
            label: 'Discover',
            icon: SvgPicture.asset(searchIcon),
          ),
          BottomNavigationBarItem(
            label: 'Deals',
            icon: SvgPicture.asset(workIcon),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: SvgPicture.asset(profileIcon),
          ),
        ],
      ),
    );
  }
}
