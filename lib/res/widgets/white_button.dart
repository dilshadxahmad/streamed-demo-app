import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';

class WhiteButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const WhiteButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(whiteColor),
        ),
        child: child,
      ),
    );
  }
}
