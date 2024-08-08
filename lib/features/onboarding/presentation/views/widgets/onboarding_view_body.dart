import 'package:dalel_app/features/onboarding/presentation/views/second_onboarding_screen.dart';
import 'package:dalel_app/features/onboarding/presentation/views/first_onboarding_screen.dart';
import 'package:flutter/material.dart';

final controller = PageController();

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: const [
        FirstOnboardingScreen(),
        SecondOnboardingScreen(),
      ],
    );
  }
}

class ThiirdOnboarding extends StatelessWidget {
  const ThiirdOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
