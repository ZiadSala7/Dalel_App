import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

const String dalelBold = "dalelBold";
const String dalelReg = "dalelReg";
const brownColor = Color(0xffC49E85);
const borderColor = Color(0xffC9C6CE);
final defaultPinTheme = PinTheme(
  width: 70,
  height: 60,
  textStyle: const TextStyle(
    fontSize: 25,
    color: Color.fromRGBO(20, 21, 21, 1),
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
      color: const Color.fromARGB(255, 193, 190, 190),
    ),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Colors.black),
);
