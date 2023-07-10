import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/categories/components/service_detail_sheet.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_text_button.dart';
import 'package:door_hub/app/modules/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceSheet extends StatelessWidget {
  final VoidCallback? saveCallback;
  final VoidCallback? bookCallback;
  final String bookText;
  final bool isDetailPage;
  const ServiceSheet(
      {super.key,
      this.saveCallback,
      this.bookCallback,
      required this.bookText,
      this.isDetailPage = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kWhite,
      padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                  text: 'Total:',
                  style:
                      AppTypography.kMedium14.copyWith(color: AppColors.kGrey),
                  children: [
                    TextSpan(
                        text: '  USD 150.50',
                        style:
                            AppTypography.kBold14.copyWith(color: Colors.black))
                  ]),
            ),
            const Spacer(),
            isDetailPage
                ? CustomTextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.r))),
                          builder: (context) {
                            return const ServiceDetailSheet();
                          });
                    },
                    color: Colors.red,
                    text: 'Bill Details',
                  )
                : const SizedBox(),
          ],
        ),
        isDetailPage ? const SizedBox() : SizedBox(height: 10.h),
        Row(
          children: [
            Expanded(
              child: PrimaryButton(
                onTap: saveCallback!,
                text: 'Save Draft',
                color: AppColors.kWhite,
                isBorder: true,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: PrimaryButton(
                onTap: bookCallback!,
                text: 'Book Now',
              ),
            )
          ],
        ),
      ]),
    );
  }
}
