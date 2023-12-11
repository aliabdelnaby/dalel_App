import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalil/core/utils/app_assets.dart';
import 'package:dalil/core/utils/app_colors.dart';
import 'package:dalil/core/utils/app_strings.dart';
import 'package:dalil/core/utils/app_text_style.dart';
import 'package:dalil/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PeriodDetailsSection extends StatelessWidget {
  const PeriodDetailsSection(
      {super.key,
      required this.periodName,
      required this.description,
      required this.imageUrl});
  final String periodName;
  final String description;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomHeaderText(
              text: "${AppStrings.about} $periodName",
            ),
            const SizedBox(width: 7),
            SvgPicture.asset(
              Assets.assetsImagesDetails1,
            ),
          ],
        ),
        const SizedBox(height: 47),
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -64,
                  child: SvgPicture.asset(
                    Assets.assetsImagesDetails2,
                  ),
                ),
                SizedBox(
                  height: 220,
                  width: 196,
                  child: Text(
                    description,
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyle.poppins500style14.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            SizedBox(
              height: 203,
              width: 131,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
