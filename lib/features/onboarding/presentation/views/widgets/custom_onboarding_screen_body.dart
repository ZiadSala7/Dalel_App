import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_skip_text_button.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class CustomOnboardingScreenBody extends StatelessWidget {
  final OnboardingModel onboardingModel;
  const CustomOnboardingScreenBody({super.key, required this.onboardingModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(
                child: onboardingModel.isLast
                    ? null
                    : const CustomSkipTextButton(),
              ),
              SizedBox(
                height: onboardingModel.isLast ? 80 : 30,
              ),
              Image.asset(onboardingModel.image),
              const SizedBox(
                height: 30,
              ),
              const CustomSmoothPageIndicator(),
              const SizedBox(
                height: 30,
              ),
              Text(
                onboardingModel.mainText,
                textAlign: TextAlign.center,
                style: AppStyles.textStyle25.copyWith(
                  fontFamily: dalelBold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                onboardingModel.subText,
                textAlign: TextAlign.center,
                style: AppStyles.textStyle18.copyWith(
                  fontFamily: dalelReg,
                ),
              ),
            ],
          ),
        ),
        CustomButton(
          txt: onboardingModel.isLast ? 'Create Account' : 'Next',
          onPressed: () {
            !onboardingModel.isLast
                ? controller.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.linearToEaseOut,
                  )
                : null;
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: onboardingModel.isLast
              ? TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login Now",
                    style: AppStyles.textStyle16.copyWith(
                      color: brownColor,
                      decoration: TextDecoration.underline,
                      decorationColor: brownColor,
                    ),
                  ),
                )
              : null,
        ),
        SizedBox(
          height: onboardingModel.isLast ? 10 : 40,
        ),
      ],
    );
  }
}
