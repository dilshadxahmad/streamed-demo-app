import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';

class GradientButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final Widget child;

  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.height,
    this.width,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(100);
    return Container(
      height: height ?? 55.h,
      width: width,
      decoration: BoxDecoration(
        gradient: cyanWhiteGradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          padding: padding,
        ),
        child: child,
      ),
    );
  }
}
