import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/custom_box_decoration_methos.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  final String name;
  final String image;
  const CustomCategoryItem({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      decoration: customBoxDecorationMethod(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageWidget(image: image),
          Text(
            name,
            style: AppStyles.textStyle17.copyWith(
              color: Colors.brown[500],
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
