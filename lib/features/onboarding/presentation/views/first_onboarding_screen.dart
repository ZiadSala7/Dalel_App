import 'package:dalel_app/features/onboarding/presentation/views/widgets/first_onboarding_screen_body.dart';
import 'package:flutter/material.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const FirstOnboardingScreenBody(),
    );
  }
}
