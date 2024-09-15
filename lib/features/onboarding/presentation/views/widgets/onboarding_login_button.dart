import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingLoginButton extends StatelessWidget {
  const OnboardingLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool('onboarding', true);
        GoRouter.of(context).pushReplacement(AppRouter.loginView);
      },
      child: Text(
        "Login Now",
        style: AppStyles.textStyle16.copyWith(
          color: brownColor,
          decoration: TextDecoration.underline,
          decorationColor: brownColor,
        ),
      ),
    );
  }
}
