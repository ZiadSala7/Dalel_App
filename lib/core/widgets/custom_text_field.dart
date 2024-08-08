import 'package:dalel_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // final TextEditingController controller;
  final String labelText;
  const CustomTextField({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        cursorColor: borderColor,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Color(0xffB4ACAD),
            fontFamily: dalelReg,
          ),
          focusedBorder: outlineInputBorderMethod(),
          enabledBorder: outlineInputBorderMethod(),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderMethod() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: borderColor,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(5),
    );
  }
}
