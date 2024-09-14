import 'package:flutter/material.dart';

BoxDecoration customBoxDecorationMethod() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: const [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 10,
        offset: Offset(0, 7),
      )
    ],
  );
}
