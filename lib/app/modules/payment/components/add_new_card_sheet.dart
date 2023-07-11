import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/auth/components/auth_field.dart';
import 'package:door_hub/app/modules/payment/components/custom_check_box.dart';
import 'package:door_hub/app/modules/payment/scan_card.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_button.dart';
import 'package:door_hub/app/modules/widgets/buttons/primary_button.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:door_hub/app/modules/widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddNewCardSheet extends StatefulWidget {
  const AddNewCardSheet({super.key});

  @override
  State<AddNewCardSheet> createState() => _AddNewCardSheetState();
}

class _AddNewCardSheetState extends State<AddNewCardSheet> {
  bool isPrimaryCard = false;
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expireDateController = TextEditingController();
  final TextEditingController _cvvCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CustomHeaderText(text: 'Add New Card', fontSize: 18.sp),
              const Spacer(),
              CustomButton(
                  text: 'Scan',
                  icon: AppAssets.kScan,
                  isBorder: true,
                  onTap: () {
                    Get.back();
                    Get.to(() => const CreditCardScanner());
                  })
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text('Card Number', style: AppTypography.kLight14),
              SizedBox(width: 5.w),
              SvgPicture.asset(AppAssets.kInfo)
            ],
          ),
          SizedBox(height: 12.h),
          AuthField(
              controller: _cardNumberController,
              hintText: '3571  399507  50832'),
          SizedBox(height: 20.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Expire Ends', style: AppTypography.kLight14),
                        SizedBox(width: 5.w),
                        SvgPicture.asset(AppAssets.kInfo)
                      ],
                    ),
                    SizedBox(height: 12.h),
                    AuthField(
                        controller: _expireDateController, hintText: '07/22'),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Cvv', style: AppTypography.kLight14),
                        SizedBox(width: 5.w),
                        SvgPicture.asset(AppAssets.kInfo)
                      ],
                    ),
                    SizedBox(height: 12.h),
                    AuthField(controller: _cvvCodeController, hintText: '483'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              CustomCheckBox(
                value: isPrimaryCard,
                onChanged: (value) {
                  setState(() {
                    isPrimaryCard = value;
                  });
                },
              ),
              SizedBox(width: 10.w),
              Text('Save as a primary card', style: AppTypography.kMedium15),
            ],
          ),
          SizedBox(height: 20.h),
          PrimaryButton(
            onTap: () {},
            text: 'Add Card',
            color: AppColors.kInput,
          ),
        ],
      ),
    );
  }
}
