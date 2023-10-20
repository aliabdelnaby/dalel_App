import 'package:dalil/core/utils/app_strings.dart';
import 'package:dalil/core/widgets/custom_header_text.dart';
import 'package:dalil/features/home/presentation/widgets/custom_category_list_view.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.historicalSouvenirs),
        SizedBox(height: 16),
        CustomCategoryListView(),
      ],
    );
  }
}
