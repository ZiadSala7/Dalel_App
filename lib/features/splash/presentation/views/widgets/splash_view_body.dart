import 'package:dalel_app/core/utils/app_animation.dart';
import 'package:dalel_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomFadeInDown(
        duration: 1,
        child: Image.asset(AppImages.splashImg),
      ),
    );
  }
}
