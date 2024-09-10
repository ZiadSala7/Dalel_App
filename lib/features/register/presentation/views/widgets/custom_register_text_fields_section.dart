import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/core/widgets/custom_password_text_field.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_check_box.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_is_account_found.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomRegisterTextFieldsSection extends StatelessWidget {
  const CustomRegisterTextFieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          CustomTextFormField(
            labelText: "First Name :",
            onChanged: (String value) {},
            onFieldSubmitted: (String value) {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            labelText: "Last Name :",
            onChanged: (String value) {},
            onFieldSubmitted: (String value) {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            labelText: "Email Address :",
            onChanged: (String value) {},
            onFieldSubmitted: (String value) {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomPasswordTextFormField(
            labelText: "Password : ",
            onChanged: (String value) {},
            onFieldSubmitted: (String value) {},
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomCheckBox(),
          const SizedBox(height: 120),
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
      ),
    );
  }
}
