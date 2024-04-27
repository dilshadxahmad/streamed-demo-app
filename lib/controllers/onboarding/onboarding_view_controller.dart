import 'package:flutter/material.dart';
import 'package:streamed_demo_app/controllers/onboarding/onboarding_card_model.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';
import 'package:streamed_demo_app/res/routes/app_named_routes.dart';
import 'package:streamed_demo_app/res/routes/app_navigation.dart';

class OnboardingViewController with ChangeNotifier {
  int _currentPageIndex = 0;
  int get currentPageIndex => _currentPageIndex;

  final _onboardingList = const [
    OnboardingCardModel(
      id: 1,
      image: onboardingImage1,
      title: 'Discover Great Deals',
      subTitle:
          'Have something to sell? Just snap, upload, and price your items. We\'ve made the process simple and quick. Get your items in front of buyers in no time!',
    ),
    OnboardingCardModel(
      id: 2,
      image: onboardingImage2,
      title: 'Effortless Selling',
      subTitle:
          'Have something to sell? Just snap, upload, and price your items. We\'ve made the process simple and quick. Get your items in front of buyers in no time!',
    ),
    OnboardingCardModel(
      id: 3,
      image: onboardingImage3,
      title: 'Promote Your Business',
      subTitle:
          'Our platform is a powerful tool for businesses as well! Advertise your products or services to a large and engaged audience,',
    ),
  ];
  List<OnboardingCardModel> get onboardingList => _onboardingList;

  void onPageChange(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  void navigateToHomeView() {
    AppNavigation.pushAndKillAll(routeName: AppNamedRoutes.homeView);
  }
}
