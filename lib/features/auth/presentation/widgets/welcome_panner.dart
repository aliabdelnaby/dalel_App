import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomePanner extends StatelessWidget {
  const WelcomePanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            AppStrings.appName,
            style: CustomTextStyle.saira700style32,
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(Assets.assetsImagesVector1),
              SvgPicture.asset(Assets.assetsImagesVector2),
            ],
          ),
        ],
      ),
    );
  }
}
