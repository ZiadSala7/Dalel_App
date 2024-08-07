import 'package:dalel_app/features/onboarding/presentation/views/first_onboarding_view.dart';
import 'package:flutter/material.dart';

final controller = PageController();

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: const [
        FirstOnboarding(),
        SecondOnboarding(),
      ],
    );
  }
}

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
