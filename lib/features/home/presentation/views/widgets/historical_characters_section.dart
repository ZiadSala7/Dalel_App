import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/custom_category_item.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/custom_list_view_separated.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersSection extends StatelessWidget {
  const HistoricalCharactersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomListViewSeparated(
        widget: CustomCategoryItem(
      name: 'Lionheart',
      image: AppImages.lionHeart,
    ));
  }
}
