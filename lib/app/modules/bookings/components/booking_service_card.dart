import 'package:door_hub/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BookingServiceCard extends StatelessWidget {
  const BookingServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 55.h,
          width: 55.w,
          padding: EdgeInsets.all(17.h),
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.kAccent1),
          child: SvgPicture.asset(AppAssets.kAcRepair),
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('AC Installation (Both Unit)', style: AppTypography.kMedium16),
            SizedBox(height: 5.h),
            Text(
              'Reference Code: #D-571224',
              style: AppTypography.kLight14.copyWith(color: AppColors.kNeutral),
            ),
          ],
        ),
      ],
    );
  }
}
