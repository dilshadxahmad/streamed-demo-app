import 'dart:async';

import 'package:flutter/material.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';
import 'package:streamed_demo_app/res/routes/app_named_routes.dart';
import 'package:streamed_demo_app/res/routes/app_navigation.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      // 5 seconds over, navigate to Page2.
      AppNavigation.pushAndKillAll(routeName: AppNamedRoutes.onboardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(splashBgImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
