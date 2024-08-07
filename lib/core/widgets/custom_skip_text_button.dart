import 'package:dalel_app/core/utils/app_styles.dart';
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
        onPressed: () {},
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
