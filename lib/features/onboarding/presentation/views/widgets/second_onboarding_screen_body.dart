import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_skip_text_button.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class SecondOnboardingScreenBody extends StatelessWidget {
  const SecondOnboardingScreenBody({super.key});

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
              Image.asset(AppImages.onboarding2),
              const SizedBox(
                height: 30,
              ),
              const CustomSmoothPageIndicator(),
              const SizedBox(
                height: 30,
              ),
              Text(
                'From every place \non earth',
                textAlign: TextAlign.center,
                style: AppStyles.textStyle25.copyWith(
                  fontFamily: dalelBold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "A big variety of ancient places \nfrom all over the world",
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
        ),
      ],
    );
  }
}
