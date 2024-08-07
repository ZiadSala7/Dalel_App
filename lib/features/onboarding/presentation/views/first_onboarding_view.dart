import 'package:dalel_app/features/onboarding/presentation/views/widgets/first_onboarding_body.dart';
import 'package:flutter/material.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const FirstOnboardingBody(),
    );
  }
}
