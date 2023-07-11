import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/bookings/components/booking_service_card.dart';
import 'package:door_hub/app/modules/bookings/components/status_card.dart';
import 'package:door_hub/app/modules/widgets/animations/button_animation.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class UpComingBookingCard extends StatefulWidget {
  final int index;
  const UpComingBookingCard({super.key, required this.index});

  @override
  State<UpComingBookingCard> createState() => _UpComingBookingCardState();
}

class _UpComingBookingCardState extends State<UpComingBookingCard> {
  bool startAnimation = false;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300 + (widget.index * 200)),
      transform:
          Matrix4.translationValues(startAnimation ? 0 : Get.width, 0, 0),
      child: PrimaryContainer(
          child: Column(
        children: [
          const BookingServiceCard(),
          Divider(height: 25.h),
          Row(
            children: [
              Text('Status', style: AppTypography.kLight14),
              const Spacer(),
              const BookingStatusCard()
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(
                height: 45.h,
                width: 45.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.kInput)),
                child: SvgPicture.asset(
                  AppAssets.kDate,
                  colorFilter:
                      const ColorFilter.mode(AppColors.kGrey, BlendMode.srcIn),
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('8:00-9:00 AM,  09 Dec', style: AppTypography.kMedium14),
                  Text('Schedule',
                      style: AppTypography.kLight12
                          .copyWith(color: AppColors.kNeutral04))
                ],
              )
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(
                height: 45.h,
                width: 45.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.kInput)),
                child: SvgPicture.asset(
                  AppAssets.kDate,
                  colorFilter:
                      const ColorFilter.mode(AppColors.kGrey, BlendMode.srcIn),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Westinghouse', style: AppTypography.kMedium14),
                    Text('Service provider',
                        style: AppTypography.kLight12
                            .copyWith(color: AppColors.kNeutral04))
                  ],
                ),
              ),
              ButtonAnimation(
                  child: Container(
                    padding: EdgeInsets.all(12.h),
                    decoration: BoxDecoration(
                        color: AppColors.kPrimary,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppAssets.kCall),
                        SizedBox(width: 5.w),
                        Text('Call',
                            style: AppTypography.kMedium15
                                .copyWith(color: AppColors.kWhite))
                      ],
                    ),
                  ),
                  onTap: () {})
            ],
          )
        ],
      )),
    );
  }
}
