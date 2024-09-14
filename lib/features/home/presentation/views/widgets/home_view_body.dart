import 'package:dalel_app/features/home/presentation/views/widgets/custom_box_decoration_methos.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/custom_edited_text.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/historical_period_section.dart';
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
          const CustomEditedText(
            text: 'Historical periods',
          ),
          const SizedBox(height: 16),
          const HistoricalPeriodSection(),
          const SizedBox(height: 35),
          const CustomEditedText(
            text: 'Historical Characters',
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 155,
                width: 85,
                decoration: customBoxDecorationMethod(),
              ),
              Container(
                height: 155,
                width: 85,
                decoration: customBoxDecorationMethod(),
              ),
              Container(
                height: 155,
                width: 85,
                decoration: customBoxDecorationMethod(),
              ),
              Container(
                height: 155,
                width: 85,
                decoration: customBoxDecorationMethod(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
