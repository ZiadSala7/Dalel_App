import 'package:dalel_app/core/utils/app_styles.dart';
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0, 7),
          )
        ],
      ),
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
