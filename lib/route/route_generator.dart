import 'package:flutter/material.dart';
import 'package:halol_farm/screens/auth/sign_in_page.dart';
import 'package:halol_farm/screens/auth/sign_up_page.dart';
import 'package:halol_farm/screens/my_home_page.dart';
import 'package:halol_farm/screens/onboarding/onboarding_first.dart';
import 'package:halol_farm/screens/onboarding/onboarding_second.dart';
import 'package:halol_farm/screens/onboarding/onboarding_third.dart';
import 'package:halol_farm/screens/auth/singIn_or_signUp.dart';
import 'package:halol_farm/screens/splash_screen.dart';

class RouteGenerator {
  static generateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/home_page':
        return MaterialPageRoute(
          builder: (_) => const MyHomePage(),
        );

        case '/splash':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
        case '/onboarding_first':
        return MaterialPageRoute(
          builder: (_) => const OnboardingFirst(),
        );
        case '/onboarding_second':
        return MaterialPageRoute(
          builder: (_) => const OnboardingSecond(),
        );
        case '/onboarding_third':
        return MaterialPageRoute(
          builder: (_) => const OnboardingThird(),
        );
        case '/signIn_or_singUp':
        return MaterialPageRoute(
          builder: (_) =>  SignInOrSignUp(),
        );

        case '/sign_in':
        return MaterialPageRoute(
          builder: (_) => const SignInPage(),
        );

        case '/sign_up':
        return MaterialPageRoute(
          builder: (_) => const SignUpPage(),
        );
    }
  }
}
