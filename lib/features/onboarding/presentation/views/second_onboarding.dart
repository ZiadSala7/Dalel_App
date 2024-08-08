import 'package:dalel_app/features/onboarding/presentation/views/widgets/second_onboarding_body.dart';
import 'package:flutter/material.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SecondOnboardingBody(),
    );
  }
}
