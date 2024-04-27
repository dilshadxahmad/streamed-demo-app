import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:streamed_demo_app/controllers/onboarding/onboarding_view_controller.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';
import 'package:streamed_demo_app/res/widgets/gradient_button.dart';
import 'package:streamed_demo_app/res/widgets/page_indicator.dart';
import 'package:streamed_demo_app/res/widgets/white_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (value) {
                context.read<OnboardingViewController>().onPageChange(value);
              },
              itemCount: context
                  .watch<OnboardingViewController>()
                  .onboardingList
                  .length,
              itemBuilder: (context, index) {
                index =
                    context.watch<OnboardingViewController>().currentPageIndex;
                final value = context
                    .watch<OnboardingViewController>()
                    .onboardingList[index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 500.h,
                      width: 400.h,
                      child: Image.asset(value.image),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.h,
                          vertical: 40.h,
                        ),
                        color: primaryBlueColor,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: value.title,
                            style: Theme.of(context).textTheme.displayLarge,
                            children: [
                              TextSpan(
                                text: '\n\n${value.subTitle}',
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            color: primaryBlueColor,
            height: 6.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => PageIndicator(
                    isActive: context
                            .watch<OnboardingViewController>()
                            .currentPageIndex ==
                        index),
              ),
            ),
          ),
          Container(
            color: primaryBlueColor,
            height: 150.h,
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: WhiteButton(
                    onPressed: () {
                      context
                          .read<OnboardingViewController>()
                          .navigateToHomeView();
                    },
                    child: Text(
                      'Skip',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.h,
                ),
                Expanded(
                  flex: 1,
                  child: GradientButton(
                    onPressed: () {
                      if (context
                              .read<OnboardingViewController>()
                              .currentPageIndex ==
                          2) {
                        context
                            .read<OnboardingViewController>()
                            .navigateToHomeView();
                      } else {
                        context.read<OnboardingViewController>().onPageChange(
                            context
                                    .read<OnboardingViewController>()
                                    .currentPageIndex +
                                1);
                      }
                    },
                    child: Text(
                      context
                                  .read<OnboardingViewController>()
                                  .currentPageIndex ==
                              2
                          ? 'Explore'
                          : 'Next',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
