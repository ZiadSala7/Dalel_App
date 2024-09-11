import 'package:dalel_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  // final TextEditingController controller;
  final String labelText;
  final Function(String value) onChanged;
  final Function(String value) onFieldSubmitted;
  final String? Function(String? value)? validateMethod;
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      required this.onChanged,
      required this.onFieldSubmitted,
      required this.validateMethod});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        validator: validateMethod,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
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
