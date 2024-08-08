import 'package:dalel_app/features/register/presentation/views/widgets/custom_text_fields_section.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/ustom_buttons_section.dart';
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
            height: 170,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomTextFieldsSection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomButtonsSection(),
        ),
      ],
    );
  }
}
