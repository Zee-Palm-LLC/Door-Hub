import 'package:door_hub/app/modules/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String onboarding = '/';

  static List<GetPage> routes = [
    GetPage<Route<dynamic>>(
      name: onboarding,
      page: () => const OnboardingScreen(),
    ),
  ];

  static String getOnboardingRoute() => onboarding;

}
