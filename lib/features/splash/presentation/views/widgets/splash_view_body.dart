// ignore_for_file: use_build_context_synchronously
import 'dart:async';

import 'package:dalel_app/core/utils/app_animation.dart';
import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(
      const Duration(seconds: 6),
      () async {
        final prefs = await SharedPreferences.getInstance();
        final onboardingchecker = prefs.getBool('onboarding');
        onboardingchecker != true
            ? GoRouter.of(context).pushReplacement(AppRouter.onBoarding)
            : GoRouter.of(context).pushReplacement(AppRouter.registerView);
      },
    );
  }

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
