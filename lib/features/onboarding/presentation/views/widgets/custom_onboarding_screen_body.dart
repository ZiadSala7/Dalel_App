import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_onboarding_body.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/onboarding_login_button.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomOnboardingScreenBody extends StatelessWidget {
  final OnboardingModel onboardingModel;
  const CustomOnboardingScreenBody({super.key, required this.onboardingModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 40,
        ),
        CustomOnboardingBody(onboardingModel: onboardingModel),
        CustomButton(
          txt: onboardingModel.isLast ? 'Create Account' : 'Next',
          onPressed: () async {
            if (!onboardingModel.isLast) {
              controller.nextPage(
                duration: const Duration(seconds: 1),
                curve: Curves.linearToEaseOut,
              );
            } else {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('onboarding', true);
              GoRouter.of(context).pushReplacement(AppRouter.registerView);
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: onboardingModel.isLast ? const OnboardingLoginButton() : null,
        ),
        SizedBox(
          height: onboardingModel.isLast ? 10 : 40,
        ),
      ],
    );
  }
}
