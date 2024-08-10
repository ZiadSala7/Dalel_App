import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomVerificationButton extends StatelessWidget {
  const CustomVerificationButton({
    super.key,
    required this.isCompleted,
  });

  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        onPressed: isCompleted ? () {} : null,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15),
          backgroundColor: isCompleted ? brownColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          "Verification Now",
          style: AppStyles.textStyle22.copyWith(
            color: isCompleted ? Colors.white : Colors.brown,
          ),
        ),
      ),
    );
  }
}
