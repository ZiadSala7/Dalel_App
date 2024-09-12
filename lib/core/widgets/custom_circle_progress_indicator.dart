import 'package:dalel_app/constants.dart';
import 'package:flutter/material.dart';

class CustomCircleProgressIndicator extends StatelessWidget {
  const CustomCircleProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 190),
      child: CircularProgressIndicator(
        color: brownColor,
      ),
    );
  }
}
