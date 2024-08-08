import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/core/widgets/custom_password_text_field.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_check_box.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_is_account_found.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome!',
                textAlign: TextAlign.center,
                style: AppStyles.textStyle30.copyWith(
                  fontFamily: dalelBold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomTextField(
                labelText: "First Name :",
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextField(
                labelText: "Last Name :",
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextField(
                labelText: "Email Address :",
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomPasswordTextField(
                labelText: "Password : ",
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomCheckBox(),
            ],
          ),
        ),
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
