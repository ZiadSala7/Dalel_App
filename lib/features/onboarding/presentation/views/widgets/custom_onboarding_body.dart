import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_skip_text_button.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class CustomOnboardingBody extends StatelessWidget {
  const CustomOnboardingBody({
    super.key,
    required this.onboardingModel,
  });

  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            child: onboardingModel.isLast ? null : const CustomSkipTextButton(),
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
    );
  }
}
