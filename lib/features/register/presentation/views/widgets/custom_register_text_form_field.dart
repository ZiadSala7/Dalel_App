import 'package:dalel_app/core/widgets/custom_password_text_field.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:dalel_app/features/register/presentation/view_models/cubit/register_cubit.dart';
import 'package:flutter/material.dart';

class CustomRegisterTextFormFields extends StatelessWidget {
  const CustomRegisterTextFormFields({
    super.key,
    required this.registerCubit,
  });

  final RegisterCubit registerCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          labelText: "First Name :",
          onChanged: (String firstName) {
            registerCubit.firstName = firstName;
          },
          onFieldSubmitted: (String value) {},
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextFormField(
          labelText: "Last Name :",
          onChanged: (String lastName) {
            registerCubit.lastName = lastName;
          },
          onFieldSubmitted: (String value) {},
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextFormField(
          labelText: "Email Address :",
          onChanged: (String emailAddress) {
            registerCubit.emailAddress = emailAddress;
          },
          onFieldSubmitted: (String value) {},
        ),
        const SizedBox(
          height: 30,
        ),
        CustomPasswordTextFormField(
          labelText: "Password : ",
          onChanged: (String password) {
            registerCubit.password = password;
          },
          onFieldSubmitted: (String value) {},
        ),
      ],
    );
  }
}
