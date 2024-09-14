import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/custom_box_decoration_methos.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodItem extends StatelessWidget {
  final String text;
  final String image;
  const HistoricalPeriodItem({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customBoxDecorationMethod(),
      height: 100,
      width: 175,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppStyles.textStyle20.copyWith(
              color: Colors.brown[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          Image.asset(
            image,
            // height: 50,
          ),
        ],
      ),
    );
  }
}
