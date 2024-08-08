import 'package:dalel_app/features/login/presentation/views/widgets/login_view_body_image.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_buttons_section.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_text_fields_section.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LoginViewBodyImage(),
          SizedBox(
            height: 35,
          ),
          CustomTextFieldsSection(),
          CustomButtonsSection(),
        ],
      ),
    );
  }
}
