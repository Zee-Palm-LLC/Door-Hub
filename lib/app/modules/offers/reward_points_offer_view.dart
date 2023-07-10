import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/offers/components/rewards_main_card.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:door_hub/app/modules/widgets/dialogs/rating_dialog.dart';
import 'package:door_hub/app/modules/widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RewardPointOfferView extends StatelessWidget {
  const RewardPointOfferView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  showGeneralDialog(
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionBuilder: (context, a1, a2, widget) {
                        return RatingDialog(
                          opacity: a1,
                          scale: a1,
                        );
                      },
                      transitionDuration: const Duration(milliseconds: 200),
                      barrierDismissible: true,
                      barrierLabel: '',
                      context: context,
                      pageBuilder: (context, animation1, animation2) {
                        return const SizedBox();
                      });
                },
                child: const RewardsMainCard()),
            SizedBox(height: 10.h),
            PrimaryContainer(
              child: Column(
                children: [
                  CustomHeaderText(
                      text: 'Rewards Point Offers', fontSize: 18.sp),
                  SizedBox(height: 10.h),
                  Container(
                    padding: EdgeInsets.all(15.h),
                    decoration: BoxDecoration(
                        color: AppColors.kAccent1,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Row(
                      children: [
                        Container(
                          height: 45.h,
                          width: 45.w,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: AppColors.kWhite,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(AppAssets.kOffers),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('5% Off Entire Order',
                                style: AppTypography.kBold16),
                            Text('1000 Points', style: AppTypography.kLight14),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
