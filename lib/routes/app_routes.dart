import 'package:flutter/material.dart';
import 'package:amit_s_application2/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:amit_s_application2/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:amit_s_application2/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:amit_s_application2/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:amit_s_application2/presentation/onboarding_five_screen/onboarding_five_screen.dart';
import 'package:amit_s_application2/presentation/onboarding_six_screen/onboarding_six_screen.dart';
import 'package:amit_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String onboardingFiveScreen = '/onboarding_five_screen';

  static const String onboardingSixScreen = '/onboarding_six_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        onboardingFourScreen: OnboardingFourScreen.builder,
        onboardingFiveScreen: OnboardingFiveScreen.builder,
        onboardingSixScreen: OnboardingSixScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingOneScreen.builder
      };
}
