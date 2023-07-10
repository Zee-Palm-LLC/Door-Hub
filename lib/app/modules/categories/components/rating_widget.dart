import 'package:door_hub/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.kStar),
        SizedBox(width: 5.w),
        RichText(
          text: TextSpan(
              text: '4.8 ',
              style: AppTypography.kBold12.copyWith(color: Colors.black),
              children: [
                TextSpan(
                    text: '(87)',
                    style: AppTypography.kBold12
                        .copyWith(color: AppColors.kNeutral04))
              ]),
        ),
      ],
    );
  }
}
