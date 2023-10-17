import 'package:dalil/core/utils/app_assets.dart';
import 'package:dalil/core/utils/app_colors.dart';
import 'package:dalil/core/utils/app_strings.dart';
import 'package:dalil/core/utils/app_text_style.dart';
import 'package:dalil/core/widgets/custom_header_text.dart';
import 'package:dalil/features/home/presentation/widgets/home_appbar_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 28),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 28)),
            SliverToBoxAdapter(child: CustomHomeViewAppBar()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(
                child: CustomHeaderText(
              text: AppStrings.historicalPeriods,
            )),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: HistoricalPeriods()),
          ],
        ),
      ),
    );
  }
}

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriodsItem(),
        HistoricalPeriodsItem(),
      ],
    );
  }
}

class HistoricalPeriodsItem extends StatelessWidget {
  const HistoricalPeriodsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 96,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey,
            blurRadius: 10,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 15),
          SizedBox(
            height: 48,
            width: 62,
            child: Text(
              "Ancient Egypt",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyle.poppins500style18.copyWith(
                fontSize: 16,
                color: AppColors.deepBrown,
              ),
            ),
          ),
          Container(
            height: 64,
            width: 47,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(Assets.assetsImagesFrame)),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
