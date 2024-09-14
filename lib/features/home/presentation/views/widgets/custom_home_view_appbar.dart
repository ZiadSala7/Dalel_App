import 'package:dalel_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

AppBar customHomeViewAppBar() {
  return AppBar(
    flexibleSpace: Container(
      color: Colors.white,
    ),
    actions: [
      Image.asset(
        AppImages.splashImg,
        width: 60,
      ),
      const SizedBox(
        width: 10,
      ),
    ],
  );
}
