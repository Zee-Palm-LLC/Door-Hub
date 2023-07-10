import 'package:door_hub/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImageCard extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? textColor;
  const ProfileImageCard({this.textColor, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CircleAvatar(
            radius: AppSpacing.radiusThirty,
            backgroundImage: AssetImage(AppAssets.kProfilePic),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ashfak Sayem',
                  style: AppTypography.kMedium15
                      .copyWith(color: textColor ?? AppColors.kWhite)),
              SizedBox(height: 5.h),
              Text(
                'ashfaksayem@gmail.com',
                style: AppTypography.kLight14.copyWith(color: AppColors.kHint),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
