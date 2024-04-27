import 'package:flutter/material.dart';
import 'package:streamed_demo_app/res/routes/app_named_routes.dart';
import 'package:streamed_demo_app/views/home/home_view.dart';
import 'package:streamed_demo_app/views/onboarding/onboarding_view.dart';
import 'package:streamed_demo_app/views/splash/splash_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case AppNamedRoutes.initialRoute:
        return routeScreen(child: const SplashView());

      case AppNamedRoutes.onboardingView:
        return routeScreen(child: const OnboardingView());

      case AppNamedRoutes.homeView:
        return routeScreen(child: const HomeView());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Text('Error Page');
    });
  }

  static Route<dynamic> routeScreen({
    Widget? child,
  }) {
    return MaterialPageRoute(
      // builder: (context) => child!,
      builder: (context) => SafeArea(
        child: child!,
      ),
    );
  }
}
