import 'package:door_hub/app/data/constants/app_colors.dart';
import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/model/onboarding.dart';
import 'package:door_hub/app/modules/auth/sign_in.dart';
import 'package:door_hub/app/modules/onboarding/components/next_button.dart';
import 'package:door_hub/app/modules/onboarding/components/onboarding_card.dart';
import 'package:door_hub/app/modules/onboarding/components/skip_button.dart';
import 'package:door_hub/app/modules/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPageIndex = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        actions: [
          SkipButton(
            onTap: () {
              Get.offAll(() => const SignIn());
            },
          ),
          SizedBox(width: 16.w),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
            itemCount: onboardingList.length,
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingCard(
                playAnimation: true,
                onboarding: onboardingList[index],
              );
            },
          )),
          SmoothPageIndicator(
              controller: _pageController,
              count: onboardingList.length,
              effect: WormEffect(
                  dotHeight: 8.h,
                  dotWidth: 8.w,
                  dotColor: AppColors.kPrimary.withOpacity(0.2)),
              onDotClicked: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              }),
          SizedBox(height: 30.h),
          (_currentPageIndex < onboardingList.length - 1)
              ? NextButton(onTap: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                })
              : Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.fiftyHorizontal),
                  child: PrimaryButton(
                    onTap: () {
                      Get.offAll(() => const SignIn());
                    },
                    text: 'Get Started',
                  ),
                ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
