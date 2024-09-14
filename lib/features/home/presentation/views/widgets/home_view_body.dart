import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/historical_period_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Historical periods',
            style: AppStyles.textStyle25.copyWith(
              color: Colors.brown,
              fontFamily: dalelBold,
            ),
          ),
          const SizedBox(height: 16),
          const HistoricalPeriodSection()
        ],
      ),
    );
  }
}

class HistoricalPeriodSection extends StatelessWidget {
  const HistoricalPeriodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
  }
}
