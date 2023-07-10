import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/widgets/animations/button_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback onTap;
  const SkipButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonAnimation(
      onTap: onTap,
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: AppColors.kAccent4,
          ),
          child: Text(
            'Skip',
            style: AppTypography.kLight14.copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
