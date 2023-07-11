import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_button.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:door_hub/app/modules/widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceProviderCard extends StatelessWidget {
  const ServiceProviderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
        child: Column(
      children: [
        Row(
          children: [
            CustomHeaderText(
              text: 'Services Provider',
              fontSize: 18.sp,
            ),
            const Spacer(),
            CustomButton(
                isBorder: true,
                text: 'Timeline',
                icon: AppAssets.kArrowForward,
                onTap: () {}),
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            Container(
              height: 55.h,
              width: 55.w,
              alignment: Alignment.center,
              decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.kInput)
                  ),
              child: Image.asset(AppAssets.kServiceProvider),
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Westinghouse',
                    style: AppTypography.kMedium16),
                SizedBox(height: 5.h),
                Text(
                  'Air Conditioning',
                  style: AppTypography.kLight14
                      .copyWith(color: AppColors.kNeutral),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
