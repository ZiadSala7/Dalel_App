import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          icon: isClicked
              ? const Icon(
                  Icons.check_box,
                  color: brownColor,
                )
              : const Icon(
                  Icons.check_box_outline_blank,
                  color: borderColor,
                ),
        ),
        Text(
          "I have agree to our ",
          style: AppStyles.textStyle14.copyWith(
            fontFamily: dalelReg,
          ),
        ),
        GestureDetector(
          child: Text(
            "Terms and Condition",
            style: AppStyles.textStyle14.copyWith(
              fontFamily: dalelReg,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}
