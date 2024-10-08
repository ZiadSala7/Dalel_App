import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/widgets/outline_input_border_method.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  // final TextEditingController controller;
  final String labelText;
  final Function(String value) onChanged;
  final Function(String value) onFieldSubmitted;
  const CustomPasswordTextFormField({
    super.key,
    required this.labelText,
    required this.onChanged,
    required this.onFieldSubmitted,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        validator: (value) {
          return value!.length >= 8 ? null : "Password must be 8 chars or more";
        },
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onFieldSubmitted,
        obscureText: isClicked,
        cursorColor: borderColor,
        decoration: inputDecorationMethod(),
      ),
    );
  }

  InputDecoration inputDecorationMethod() {
    return InputDecoration(
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
        icon: isClicked
            ? const Icon(Icons.visibility_off_outlined)
            : const Icon(Icons.visibility_outlined),
      ),
      labelText: widget.labelText,
      labelStyle:
          const TextStyle(color: Color(0xffB4ACAD), fontFamily: dalelReg),
      focusedBorder: outlineInputBorderMethod(),
      enabledBorder: outlineInputBorderMethod(),
    );
  }
}
