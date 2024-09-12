import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/register/presentation/view_models/cubit/register_cubit.dart';
import 'package:dalel_app/features/register/presentation/view_models/cubit/register_cubit_states.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_check_box.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_is_account_found.dart';
import 'package:dalel_app/features/register/presentation/views/widgets/custom_register_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomRegisterDataSection extends StatelessWidget {
  const CustomRegisterDataSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterCubitStates>(
      listener: (context, state) {},
      builder: (context, state) {
        final registerCubit = BlocProvider.of<RegisterCubit>(context);
        return Form(
          key: registerCubit.signUpFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome!',
                textAlign: TextAlign.center,
                style: AppStyles.textStyle30.copyWith(
                  fontFamily: dalelBold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomRegisterTextFormFields(registerCubit: registerCubit),
              const SizedBox(
                height: 20,
              ),
              const CustomCheckBox(),
              const SizedBox(height: 120),
              CustomButton(
                txt: "Sign Up",
                onPressed: () {},
              ),
              CustomAccountIsFound(
                mainText: "Already have an account?",
                subText: "Sign in",
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRouter.loginView);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
