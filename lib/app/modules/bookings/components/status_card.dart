import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/model/booking_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookingStatusCard extends StatelessWidget {
  final BookingStatus status;
  const BookingStatusCard({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color containerColor;
    Color textColor;

    switch (status) {
      case BookingStatus.confirmed:
        containerColor = const Color(0xFFECF8F1);
        textColor = AppColors.kLime;
        break;
      case BookingStatus.complete:
        containerColor = AppColors.kPrimary.withOpacity(0.1);
        textColor = AppColors.kPrimary;
        break;
      case BookingStatus.pending:
         containerColor = const Color(0xFFEB833C1A).withOpacity(0.1);
        textColor = AppColors.kAccent1;
        break;
      case BookingStatus.draft:
        containerColor = AppColors.kAccent1.withOpacity(0.1);
        textColor = AppColors.kAccent1;
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Text(
        status.name.capitalizeFirst.toString(),
        style: AppTypography.kMedium14.copyWith(color: textColor),
      ),
    );
  }
}
