import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAccountIsFound extends StatelessWidget {
  final String mainText;
  final String subText;
  final Function() onPressed;
  const CustomAccountIsFound({
    super.key,
    required this.mainText,
    required this.subText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          mainText,
          style: AppStyles.textStyle14.copyWith(
            color: Colors.grey,
            fontFamily: dalelReg,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            subText,
            style: AppStyles.textStyle14.copyWith(
              color: brownColor,
            ),
          ),
        ),
      ],
    );
  }
}
