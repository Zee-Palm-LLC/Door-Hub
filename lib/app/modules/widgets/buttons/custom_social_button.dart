import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/widgets/animations/button_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  const CustomSocialButton(
      {super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ButtonAnimation(
      onTap: onTap,
      child: Container(
        height: 55.h,
        width: 55.w,
        alignment: Alignment.center,
        padding: EdgeInsets.all(1.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSpacing.radiusTen),
          color: AppColors.kNeutral01,
          border: Border.all(color: AppColors.kNeutral03, width: 2.w),
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
