import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/custom_box_decoration_methos.dart';
import 'package:flutter/material.dart';

class CustomCardItem extends StatelessWidget {
  final String name;
  final String image;
  const CustomCardItem({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: 90,
      decoration: customBoxDecorationMethod(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            image,
            fit: BoxFit.fitWidth,
          ),
          Text(
            name,
            style: AppStyles.textStyle18.copyWith(
              color: Colors.brown[500],
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
