import 'package:dalel_app/features/home/presentation/views/widgets/custom_home_view_appbar.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customHomeViewAppBar(),
      drawer: const Drawer(),
      body: const HomeViewBody(),
    );
  }
}
