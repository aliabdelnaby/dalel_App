import 'package:dalil/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: Assets.assetsImagesOnBoarding1,
    title: 'Explore The history with \n dalel in a smart way',
    subTitle:
        "Using our app's history libraries \n you can find many hostrical periods",
  ),
  OnBoardingModel(
    imagePath: Assets.assetsImagesOnBoarding2,
    title: "From every place on earth",
    subTitle: "A big variety of ancient places from all over the world",
  ),
  OnBoardingModel(
    imagePath: Assets.assetsImagesOnBoarding,
    title: "Using modern AI technology for better user experience",
    subTitle:
        "AI provide recommendations and helps you to continue the search journy",
  ),
];
