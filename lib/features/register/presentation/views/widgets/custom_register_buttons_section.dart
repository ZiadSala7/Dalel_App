import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_is_account_found.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomRegisterButtonsSection extends StatelessWidget {
  const CustomRegisterButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomButton(
          txt: "Sign Up",
          onPressed: () {},
        ),
        CustomAccountIsFound(
          mainText: "Already have an account?",
          subText: "Sign in",
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.loginView);
          },
        ),
      ],
    );
  }
}
