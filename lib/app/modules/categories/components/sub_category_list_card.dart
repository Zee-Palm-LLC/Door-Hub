import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/categories/components/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryListCard extends StatelessWidget {
  const SubCategoryListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 116.h,
          width: 105.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                  image: AssetImage(AppAssets.kCleaningService1),
                  fit: BoxFit.cover)),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [RatingWidget(), Spacer(), Icon(Icons.more_horiz)],
              ),
              SizedBox(height: 5.h),
              Text('AC Check-Up', style: AppTypography.kMedium14),
              SizedBox(height: 4.h),
              Text('Starts From',
                  style: AppTypography.kLight12
                      .copyWith(color: AppColors.kNeutral04.withOpacity(0.75))),
              SizedBox(height: 8.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.5.h, horizontal: 8.w),
                decoration: BoxDecoration(
                    color: AppColors.kLime,
                    borderRadius: BorderRadius.circular(5.r)),
                child: Text(r'$128', style: AppTypography.kMedium12),
              )
            ],
          ),
        )
      ],
    );
  }
}
