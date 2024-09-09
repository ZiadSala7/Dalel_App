import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_is_account_found.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomLoginButtonsSection extends StatelessWidget {
  const CustomLoginButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.forgetPasswordView);
            },
            child: const Text(
              "Forget Password?",
              style: TextStyle(color: Colors.brown),
            ),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        CustomButton(
          txt: "Sign Up",
          onPressed: () {},
        ),
        CustomAccountIsFound(
          mainText: "Don't have an account?",
          subText: "Sign up",
          onPressed: () {
            GoRouter.of(context).push(AppRouter.registerView);
          },
        ),
      ],
    );
  }
}
