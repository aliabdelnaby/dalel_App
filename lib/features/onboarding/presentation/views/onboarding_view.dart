import 'package:dalil/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_button.dart';
import 'widgets/custom_nav_bar.dart';
import 'widgets/onboarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const CustomNavBar(),
              OnBoardingWidgetBody(),
              const CustomBtn(text: AppStrings.next),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
