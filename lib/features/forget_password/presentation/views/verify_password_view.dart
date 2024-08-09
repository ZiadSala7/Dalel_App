import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class VerifyPasswordView extends StatelessWidget {
  const VerifyPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerifyPasswordViewBody(),
    );
  }
}

class VerifyPasswordViewBody extends StatelessWidget {
  const VerifyPasswordViewBody({super.key});

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
        ],
      ),
    );
  }
}
