import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_is_account_found.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_text_fields_section.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomTextFieldsSection(),
        CustomButton(
          txt: "Sign Up",
          onPressed: () {},
        ),
        CustomAccountIsFound(
          mainText: "Already have an account?",
          subText: "Sign in",
          onPressed: () {},
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
