import 'package:dalel_app/features/register/presentation/views/widgets/custom_register_data_section.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 150,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomRegisterDataSection(),
        ),
      ],
    );
  }
}
