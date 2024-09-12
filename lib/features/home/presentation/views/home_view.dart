import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            AppImages.splashImg,
            width: 60,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: const Drawer(),
      body: const HomeViewBody(),
    );
  }
}
