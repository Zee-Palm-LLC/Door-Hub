import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/home/components/show_case_widget.dart';
import 'package:door_hub/app/modules/offers/reward_points_offer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey showCaseKey;
  final VoidCallback onLeadingPressed;
  final VoidCallback onShowCaseNextTap;

  const HomeAppBar({
    super.key,
    required this.onShowCaseNextTap,
    required this.showCaseKey,
    required this.onLeadingPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return AppBar(
      leading: IconButton(
        onPressed: onLeadingPressed,
        icon: SvgPicture.asset(
          AppAssets.kMenu,
          colorFilter: ColorFilter.mode(
              isDarkMode(context) ? AppColors.kWhite : Colors.black,
              BlendMode.srcIn),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current Location',
            style: AppTypography.kLight9.copyWith(color: AppColors.kGrey),
          ),
          Showcase.withWidget(
            key: showCaseKey,
            overlayOpacity: 0,
            height: 100.h,
            width: 300.w,
            disposeOnTap: false,
            container: CustomShowCaseWidget(
              title: 'Select Current Location',
              buttonText: 'Next',
              description:
                  'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. ',
              onNextTap: onShowCaseNextTap,
              widgetNumber: '1',
            ),
            child: Text(
              '15A, James Street',
              style: AppTypography.kExtraLight13.copyWith(
                  color: isDarkMode(context) ? AppColors.kWhite : Colors.black),
            ),
          ),
        ],
      ),
      actions: [
        InkWell(
          onTap: () {
            Get.to(() => const RewardPointOfferView());
          },
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bronze',
                      style: AppTypography.kMedium10
                          .copyWith(color: AppColors.kWarning)),
                  Text('0 Points',
                      style: AppTypography.kLight8
                          .copyWith(color: AppColors.kGrey))
                ],
              ),
              SizedBox(width: 5.w),
              SvgPicture.asset(AppAssets.kBronzeBadge)
            ],
          ),
        ),
        SizedBox(width: 10.w),
      ],
    );
  }
}
