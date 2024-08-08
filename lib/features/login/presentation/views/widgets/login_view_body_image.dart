import 'package:dalel_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class LoginViewBodyImage extends StatelessWidget {
  const LoginViewBodyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppImages.login,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              AppImages.login2,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              AppImages.login3,
            ),
          ),
          Center(
            child: Image.asset(AppImages.dalel),
          ),
        ],
      ),
    );
  }
}
