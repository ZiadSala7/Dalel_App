import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomEditedText extends StatelessWidget {
  final String text;
  const CustomEditedText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle25.copyWith(
        color: Colors.brown,
        fontFamily: dalelBold,
      ),
    );
  }
}
