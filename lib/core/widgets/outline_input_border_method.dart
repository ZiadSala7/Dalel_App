import 'package:dalel_app/constants.dart';
import 'package:flutter/material.dart';

OutlineInputBorder outlineInputBorderMethod() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: borderColor,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(5),
  );
}
