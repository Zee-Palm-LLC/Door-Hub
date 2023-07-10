import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/categories/components/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryGridCard extends StatelessWidget {
  const SubCategoryGridCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 147.w,
            height: 158.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                  image: AssetImage(AppAssets.kCleaningService1),
                  fit: BoxFit.cover,
                )),
          ),
          const Spacer(),
          Text('AC Check-Up', style: AppTypography.kMedium14),
          SizedBox(height: 4.h),
          Text('Starts From',
              style: AppTypography.kLight12
                  .copyWith(color: AppColors.kNeutral04.withOpacity(0.75))),
          SizedBox(height: 5.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.5.h, horizontal: 8.w),
                decoration: BoxDecoration(
                    color: AppColors.kLime,
                    borderRadius: BorderRadius.circular(5.r)),
                child: Text(r'$128', style: AppTypography.kMedium12),
              ),
              const Spacer(),
              const RatingWidget()
            ],
          )
        ],
      ),
    );
  }
}
