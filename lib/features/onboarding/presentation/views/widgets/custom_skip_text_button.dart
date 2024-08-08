import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class CustomSkipTextButton extends StatelessWidget {
  const CustomSkipTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {
          controller.jumpToPage(3);
        },
        child: Text(
          'Skip',
          style: AppStyles.textStyle18.copyWith(
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}
