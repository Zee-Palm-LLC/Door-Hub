import 'package:carousel_slider/carousel_slider.dart';
import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_button.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OfferList extends StatelessWidget {
  const OfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
        height: 200.h,
        padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
        child: CarouselSlider(
          options: CarouselOptions(
              height: 200.h,
              autoPlay: true,
              viewportFraction: 0.9,
              autoPlayAnimationDuration: const Duration(seconds: 2)),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 19.h),
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      color: AppColors.kSecondary,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Offer AC Service',
                                style: AppTypography.kMedium13),
                            SizedBox(width: 10.w),
                            SvgPicture.asset(AppAssets.kInfo)
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Text('Get 25%', style: AppTypography.kBold48),
                        const Spacer(),
                        CustomButton(
                            text: 'Grab Offer',
                            icon: AppAssets.kArrowForward,
                            onTap: () {})
                      ],
                    ));
              },
            );
          }).toList(),
        ));
  }
}
