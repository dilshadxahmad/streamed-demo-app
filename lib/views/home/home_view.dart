import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:streamed_demo_app/controllers/theme/theme_controller.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';
import 'package:streamed_demo_app/res/theme/app_theme.dart';
import 'package:streamed_demo_app/res/widgets/gradient_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Switch(
            value: Provider.of<ThemeController>(context).isDark,
            onChanged: (value) {
              if (Provider.of<ThemeController>(context, listen: false).isDark) {
                Provider.of<ThemeController>(context, listen: false)
                    .setTheme(AppTheme.lightTheme(), false);
              } else {
                Provider.of<ThemeController>(context, listen: false)
                    .setTheme(AppTheme.darkTheme(), true);
              }
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.only(left: 32.h, right: 32.h, top: 13.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SvgPicture.asset(homeicon),
                Text(
                  'Home',
                  style: Theme.of(context)
                      .bottomNavigationBarTheme
                      .selectedLabelStyle,
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(searchIcon),
                Text(
                  'Discover',
                  style: Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedLabelStyle,
                ),
              ],
            ),
            GradientButton(
              onPressed: () {},
              height: 40.h,
              width: 60.h,
              padding: EdgeInsets.zero,
              borderRadius: BorderRadius.circular(10.r),
              child: SvgPicture.asset(addIcon),
            ),
            Column(
              children: [
                SvgPicture.asset(workIcon),
                Text(
                  'Deals',
                  style: Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedLabelStyle,
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(profileIcon),
                Text(
                  'Profile',
                  style: Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedLabelStyle,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(laptopImage),
              fit: BoxFit.cover,
            )),
          ),
        ],
      ),
    );
  }
}
