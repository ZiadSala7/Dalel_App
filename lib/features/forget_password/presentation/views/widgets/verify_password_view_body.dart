import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/forget_password/presentation/views/widgets/custom_verification_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyPasswordViewBody extends StatefulWidget {
  const VerifyPasswordViewBody({super.key});

  @override
  State<VerifyPasswordViewBody> createState() => _VerifyPasswordViewBodyState();
}

class _VerifyPasswordViewBodyState extends State<VerifyPasswordViewBody> {
  bool isCompleted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 100,
          ),
          Text(
            'Verify Account',
            textAlign: TextAlign.center,
            style: AppStyles.textStyle30.copyWith(
              fontFamily: dalelBold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Enter 4 digit code we have sent \nto testing@gmail.com',
            textAlign: TextAlign.center,
            style: AppStyles.textStyle18.copyWith(
              fontFamily: dalelReg,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Pinput(
            onChanged: (value) {
              setState(() {
                isCompleted = false;
              });
            },
            onCompleted: (value) {
              isCompleted = true;
            },
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            'Haven’t received verification code?',
            textAlign: TextAlign.center,
            style: AppStyles.textStyle16.copyWith(
              fontFamily: dalelReg,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130),
            child: InkWell(
              onTap: () {},
              child: Text(
                'Resend Code',
                textAlign: TextAlign.center,
                style: AppStyles.textStyle18.copyWith(
                  fontFamily: dalelReg,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 390,
          ),
          CustomVerificationButton(isCompleted: isCompleted),
        ],
      ),
    );
  }
}
