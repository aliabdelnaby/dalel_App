import 'package:dalil/core/functions/navigation.dart';
import 'package:dalil/features/onboarding/presentation/views/functions/onboarding.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_nav_bar.dart';
import 'widgets/get_buttons.dart';
import 'widgets/onboarding_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40),
              CustomNavBar(
                onTap: () {
                  onBoardingVisited();
                  customReplacementNavigate(context, "/signUp");
                },
              ),
              OnBoardingWidgetBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              const SizedBox(height: 88),
              GetButtons(currentIndex: currentIndex, controller: _controller),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
