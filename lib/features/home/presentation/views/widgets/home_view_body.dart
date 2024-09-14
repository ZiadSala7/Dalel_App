import 'package:dalel_app/features/home/presentation/views/widgets/custom_edited_text.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/historical_characters_section.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/historical_period_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomEditedText(
              text: 'Historical periods',
            ),
            SizedBox(height: 16),
            HistoricalPeriodSection(),
            SizedBox(height: 35),
            CustomEditedText(
              text: 'Historical Characters',
            ),
            SizedBox(height: 20),
            HistoricalCharactersSection(),
          ],
        ),
      ),
    );
  }
}
