import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/model/services_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingWidget extends StatelessWidget {
  final ServicesModel service;
  const RatingWidget({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.kStar),
        SizedBox(width: 5.w),
        RichText(
          text: TextSpan(
              text: service.averageRatings.toString(),
              style: AppTypography.kBold12.copyWith(color: Colors.black),
              children: [
                TextSpan(
                    text: '(${service.totalRatings})',
                    style: AppTypography.kBold12
                        .copyWith(color: AppColors.kNeutral04))
              ]),
        ),
      ],
    );
  }
}

class SecondaryRatingWidget extends StatelessWidget {
  final ServicesModel service;
  final Color? color;
  const SecondaryRatingWidget({super.key, required this.service, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 4.5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: color ?? AppColors.kWarning.withOpacity(0.1)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            AppAssets.kStar,
            colorFilter: ColorFilter.mode(
                color != null ? AppColors.kWhite : const Color(0xFFFFC554),
                BlendMode.srcIn),
          ),
          SizedBox(width: 5.w),
          Text('${service.averageRatings}',
              style: AppTypography.kBold12.copyWith(
                color: color != null ? AppColors.kWhite : Colors.black,
              ))
        ],
      ),
    );
  }
}
