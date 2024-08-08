import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  final Function() onPressed;

  const CustomButton({
    super.key,
    required this.txt,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            backgroundColor: brownColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: Text(
          txt,
          style: AppStyles.textStyle22.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
