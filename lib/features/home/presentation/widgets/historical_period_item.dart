import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalil/core/utils/app_colors.dart';
import 'package:dalil/core/utils/app_text_style.dart';
import 'package:dalil/features/home/data/models/historical_periods_models.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HistoricalPeriodsItem extends StatelessWidget {
  const HistoricalPeriodsItem({super.key, required this.model});

  final HistoricalPeriodsModel model;

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
            width: 65,
            child: Text(
              model.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyle.poppins500style18.copyWith(
                fontSize: 16,
                color: AppColors.deepBrown,
              ),
            ),
          ),
          SizedBox(
            height: 64,
            width: 47,
            child: CachedNetworkImage(
              imageUrl: model.image,
              placeholder: (context, url) => Shimmer.fromColors(
                baseColor: AppColors.grey,
                highlightColor: Colors.white,
                child: Container(
                  color: AppColors.grey,
                  height: 47,
                  width: 64,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
