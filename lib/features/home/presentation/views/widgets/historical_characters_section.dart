import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/custom_card_item.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersSection extends StatelessWidget {
  const HistoricalCharactersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCardItem(
          name: 'Lionheart',
          image: AppImages.lionHeart,
        ),
        CustomCardItem(
          name: 'SalahEldin',
          image: AppImages.salahEldin,
        ),
        CustomCardItem(
          name: 'Qianlong',
          image: AppImages.qianlong,
        ),
        CustomCardItem(
          name: 'Napoleon',
          image: AppImages.napoleon,
        ),
      ],
    );
  }
}
