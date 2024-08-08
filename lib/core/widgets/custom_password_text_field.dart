import 'package:dalel_app/constants.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  // final TextEditingController controller;
  final String labelText;
  const CustomPasswordTextField({super.key, required this.labelText});

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: isClicked,
        cursorColor: borderColor,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            },
            icon: isClicked
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
          labelText: widget.labelText,
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
