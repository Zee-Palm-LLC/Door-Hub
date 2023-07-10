import 'package:door_hub/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingStatusCard extends StatelessWidget {
  const BookingStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
      decoration: BoxDecoration(
          color: const Color(0xFFECF8F1),
          borderRadius: BorderRadius.circular(5.r)),
      child: Text('Confirmed',
          style: AppTypography.kMedium14.copyWith(color: AppColors.kLime)),
    );
  }
}
