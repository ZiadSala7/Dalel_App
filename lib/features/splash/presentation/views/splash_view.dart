import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Explore The history with \nDalel in a smart way",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: "dalelBold",
          ),
        ),
      ),
    );
  }
}
