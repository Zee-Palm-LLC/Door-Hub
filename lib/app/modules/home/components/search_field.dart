import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/widgets/animations/button_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSearchPress;
  final bool isSearchField;
  final String? hintText;
  final String? buttonText;
  const SearchField(
      {super.key,
      required this.controller,
      required this.onSearchPress,
      this.isSearchField = true,
      this.buttonText,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kInput,
        borderRadius: BorderRadius.circular(AppSpacing.radiusTen),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText ?? 'Search what you need...',
                contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                hintStyle: AppTypography.kLight13,
                border: InputBorder.none,
              ),
            ),
          ),
          ButtonAnimation(
            onTap: onSearchPress,
            child: Container(
              padding: EdgeInsets.all(9.h),
              margin: EdgeInsets.only(right: 12.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.kPrimary,
              ),
              child: isSearchField
                  ? SvgPicture.asset(AppAssets.kSearch)
                  : Text(buttonText!,
                      style: AppTypography.kMedium12
                          .copyWith(color: AppColors.kWhite)),
            ),
          ),
        ],
      ),
    );
  }
}
