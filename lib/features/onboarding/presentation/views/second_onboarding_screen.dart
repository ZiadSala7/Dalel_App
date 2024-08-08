import 'package:dalel_app/features/onboarding/presentation/views/widgets/second_onboarding_screen_body.dart';
import 'package:flutter/material.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SecondOnboardingScreenBody(),
    );
  }
}
