import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_skip_text_button.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class FirstOnboardingBody extends StatelessWidget {
  const FirstOnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Column(
            children: [
              const CustomSkipTextButton(),
              const SizedBox(
                height: 30,
              ),
              Image.asset(AppImages.onboarding1),
              const SizedBox(
                height: 30,
              ),
              const CustomSmoothPageIndicator(),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Explore The history with \nDalel in a smart way',
                textAlign: TextAlign.center,
                style: AppStyles.textStyle25.copyWith(
                  fontFamily: dalelBold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Using our app’s history libraries \nyou can find many historical periods ',
                textAlign: TextAlign.center,
                style: AppStyles.textStyle18.copyWith(
                  fontFamily: dalelReg,
                ),
              ),
            ],
          ),
        ),
        CustomButton(
          txt: 'Next',
          onPressed: () {
            // controller.nextPage(duration: Duration(), curve: curve)
          },
        ),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
