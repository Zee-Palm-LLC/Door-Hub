import 'package:door_hub/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isEnabled;
  final String icon;
  final bool isCircle;
  const CustomIconButton(
      {super.key,
      required this.onTap,
      required this.isEnabled,
      required this.icon,
      this.isCircle = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.all(8.h),
        decoration: BoxDecoration(
          color: isEnabled ? Colors.white : Colors.grey[300],
          borderRadius: BorderRadius.circular(isCircle ? 100.r : 10.r),
          boxShadow: isEnabled
              ? [
                  const BoxShadow(
                    color: Colors.grey,
                    offset: Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ]
              : null,
        ),
        child: SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(
              isEnabled ? AppColors.kPrimary : Colors.grey, BlendMode.srcIn),
        ),
      ),
    );
  }
}
