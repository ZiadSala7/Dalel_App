import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 70,
          ),
          Text(
            'Forget Password',
            textAlign: TextAlign.center,
            style: AppStyles.textStyle30.copyWith(
              fontFamily: dalelBold,
            ),
          ),
          Image.asset(
            AppImages.forgetPass,
          ),
          Text(
            'Enter your registered email below to receive \npassword reset instruction',
            textAlign: TextAlign.center,
            style: AppStyles.textStyle18.copyWith(
              fontFamily: dalelReg,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const CustomTextField(labelText: "Email Address : "),
          const SizedBox(
            height: 130,
          ),
          CustomButton(
            txt: "Send Verification Code",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
