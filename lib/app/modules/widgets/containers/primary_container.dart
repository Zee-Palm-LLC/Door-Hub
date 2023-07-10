import 'package:door_hub/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final EdgeInsets? padding;
  const PrimaryContainer(
      {required this.child, this.height, this.padding, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding ?? EdgeInsets.all(16.h),
      decoration: BoxDecoration(
          color: AppColors.kWhite, borderRadius: BorderRadius.circular(8.r)),
      child: child,
    );
  }
}
