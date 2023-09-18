import 'package:dalil/core/utils/app_assets.dart';
import 'package:dalil/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 290,
                height: 343,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      (Assets.assetsImagesOnBoarding1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: _controller),
              const SizedBox(height: 32),
              Text(
                'Explore The history with \n dalel in a smart way',
                style: CustomTextStyle.poppins500style24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              const Text(
                "Using our app's history libraries \n you can find many hostrical periods",
                style: CustomTextStyle.poppins300style16,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
