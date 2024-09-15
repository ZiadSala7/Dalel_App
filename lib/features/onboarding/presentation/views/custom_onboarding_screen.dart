import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_onboarding_screen_body.dart';
import 'package:flutter/material.dart';

class CustomOnboardingScreen extends StatelessWidget {
  final OnboardingModel onboardingModel;
  const CustomOnboardingScreen({
    super.key,
    required this.onboardingModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomOnboardingScreenBody(
        onboardingModel: onboardingModel,
      ),
    );
  }
}
