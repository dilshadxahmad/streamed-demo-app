import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';

class PageIndicator extends StatelessWidget {
  final bool isActive;
  const PageIndicator({required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.ease,
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      width: 6.h,
      height: 6.h,
      decoration: BoxDecoration(
        color: isActive ? cyanColor : greyColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
