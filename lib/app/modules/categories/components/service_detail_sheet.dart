import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/data/helper/date_time_format.dart';
import 'package:door_hub/app/modules/categories/components/custom_calendar_card.dart';
import 'package:door_hub/app/modules/categories/components/date_card.dart';
import 'package:door_hub/app/modules/categories/components/time_select_card.dart';
import 'package:door_hub/app/modules/checkout/checkout_view.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_icon_button.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_text_button.dart';
import 'package:door_hub/app/modules/widgets/buttons/primary_button.dart';
import 'package:door_hub/app/modules/widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ServiceDetailSheet extends StatefulWidget {
  const ServiceDetailSheet({Key? key}) : super(key: key);

  @override
  State<ServiceDetailSheet> createState() => _ServiceDetailSheetState();
}

class _ServiceDetailSheetState extends State<ServiceDetailSheet> {
  bool isDate = false;
  bool isTime = false;
  DateTime? _selectedTime;
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceOut,
      padding: EdgeInsets.all(20.h),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CustomHeaderText(
                text: 'Select your Date & Time?',
                fontSize: 18.sp,
              ),
              const Spacer(),
              CustomIconButton(
                onTap: () {
                  Get.back();
                },
                isCircle: true,
                isEnabled: false,
                icon: AppAssets.kCross,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          DateCard(
            onTap: () {
              setState(() {
                isDate = !isDate;
                isTime = false;
              });
            },
            title: 'Date',
            subtitle: _selectedDay == null
                ? 'Select your Date'
                : DateFormat('dd MMMM, yyyy').format(_selectedDay!),
            icon: AppAssets.kDate,
            color: const Color(0xFFFFBC99),
          ),
          SizedBox(height: 16.h),
          AnimatedCrossFade(
            firstChild: SizedBox(
                height: 350.h,
                child: CustomCalendarCard(
                  onDaySelected: (day) {
                    setState(() {
                      _selectedDay = day;
                    });
                  },
                )),
            secondChild: const SizedBox(),
            crossFadeState:
                isDate ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 500),
          ),
          DateCard(
            onTap: () {
              setState(() {
                isDate = false;
                isTime = !isTime;
              });
            },
            title: 'Time',
            subtitle: _selectedTime != null
                ? '${CustomDateTimeFormat.timeFormat(_selectedTime!)} - ${CustomDateTimeFormat.timeFormat(_selectedTime!.add(const Duration(hours: 1)))}'
                : 'Select your Time',
            icon: AppAssets.kTime,
            color: AppColors.kLime,
          ),
          isTime ? SizedBox(height: 20.h) : const SizedBox(),
          AnimatedCrossFade(
            firstChild: TimeSelectCard(
              onTimeSelected: (time) {
                setState(() {
                  _selectedTime = time;
                });
              },
            ),
            secondChild: const SizedBox(),
            crossFadeState:
                isTime ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 500),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: 'Total:',
                  style: AppTypography.kMedium14.copyWith(
                    color: AppColors.kGrey,
                  ),
                  children: [
                    TextSpan(
                      text: '  USD 150.50',
                      style: AppTypography.kBold14.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomTextButton(
                onPressed: () {},
                color: Colors.red,
                text: 'View Details',
              ),
            ],
          ),
          PrimaryButton(
            onTap: () {
              if (_selectedDay != null && _selectedTime != null) {
                Get.to(() => const CheckoutView());
              }
            },
            text: 'Continue',
            color: _selectedDay != null && _selectedTime != null
                ? null
                : AppColors.kInput,
          ),
        ],
      ),
    );
  }
}
