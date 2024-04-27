import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primarySwatch: Colors.red,
      useMaterial3: true,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: whiteColor,
      fontFamily: urbanistFont,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: whiteColor,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 13.h),
        color: whiteColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: whiteColor,
        elevation: 0,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
          fontFamily: urbanistFont,
          color: lightGreyColor,
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
        ),
        selectedLabelStyle: TextStyle(
          fontFamily: urbanistFont,
          color: primaryBlueColor,
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbIcon: const MaterialStatePropertyAll(
          Icon(
            Icons.light_mode_outlined,
            color: whiteColor,
          ),
        ),
        thumbColor: const MaterialStatePropertyAll(primaryBlueColor),
        trackColor: MaterialStatePropertyAll(primaryBlueColor.withOpacity(0.5)),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontFamily: urbanistFont,
          color: primaryBlueColor,
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          fontFamily: urbanistFont,
          color: primaryBlueColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        labelSmall: TextStyle(
          fontFamily: urbanistFont,
          color: primaryBlueColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          fontFamily: urbanistFont,
          color: whiteColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      primarySwatch: Colors.red,
      useMaterial3: true,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: accentBlueColor,
      fontFamily: urbanistFont,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: accentBlueColor,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 13.h),
        color: primaryBlueColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryBlueColor,
        elevation: 0,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
          fontFamily: urbanistFont,
          color: lightGreyColor,
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
        ),
        selectedLabelStyle: TextStyle(
          fontFamily: urbanistFont,
          color: cyanColor,
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbIcon: const MaterialStatePropertyAll(
          Icon(
            Icons.dark_mode_outlined,
            color: primaryBlueColor,
          ),
        ),
        thumbColor: const MaterialStatePropertyAll(whiteColor),
        trackColor: MaterialStatePropertyAll(primaryBlueColor.withOpacity(0.5)),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontFamily: urbanistFont,
          color: whiteColor,
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          fontFamily: urbanistFont,
          color: whiteColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        labelSmall: TextStyle(
          fontFamily: urbanistFont,
          color: primaryBlueColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          fontFamily: urbanistFont,
          color: whiteColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
