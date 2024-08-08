import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_is_account_found.dart';
import 'package:flutter/material.dart';

class CustomButtonsSection extends StatelessWidget {
  const CustomButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
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
          onPressed: () {},
        ),
      ],
    );
  }
}
