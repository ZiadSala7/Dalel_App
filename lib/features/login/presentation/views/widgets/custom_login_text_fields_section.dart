import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_password_text_field.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomLoginTextFieldsSection extends StatelessWidget {
  const CustomLoginTextFieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          labelText: "Email Address :",
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomPasswordTextField(
          labelText: "Password :",
        ),
      ],
    );
  }
}
