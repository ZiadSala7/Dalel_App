import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/historical_period_item.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HistoricalPeriodSection extends StatelessWidget {
  const HistoricalPeriodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: null,
      builder: (context, snapShot) {
        return const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HistoricalPeriodItem(
              text: 'Ancient\nEgypt',
              image: AppImages.ancientEgypt,
            ),
            HistoricalPeriodItem(
              text: 'Islamic\nEra',
              image: AppImages.islamicEra,
            ),
          ],
        );
      },
    );
  }
}
