import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/views/custom_onboarding_screen.dart';
import 'package:flutter/material.dart';

final controller = PageController();

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        CustomOnboardingScreen(
          onboardingModel: onboarding[0],
        ),
        CustomOnboardingScreen(
          onboardingModel: onboarding[1],
        ),
        CustomOnboardingScreen(
          onboardingModel: onboarding[2],
        ),
      ],
    );
  }
}
