import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/data/helper/textfield_input_formatters.dart';
import 'package:door_hub/app/modules/auth/components/auth_field.dart';
import 'package:door_hub/app/modules/payment/components/custom_check_box.dart';
import 'package:door_hub/app/modules/payment/scan_card.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_button.dart';
import 'package:door_hub/app/modules/widgets/buttons/primary_button.dart';
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
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: BottomSheet(
        onClosing: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.r))),
        enableDrag: false,
        showDragHandle: false,
        backgroundColor: isDarkMode(context)
            ? AppColors.kDarkSurfaceColor
            : AppColors.kWhite,
        builder: (context) => Padding(
          padding: EdgeInsets.all(16.h),
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
                hintText: '3571  399507  50832',
                keyboardType: TextInputType.number,
                inputFormatters: [CardNumberInputFormatter()],
              ),
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
                          controller: _expireDateController,
                          hintText: '07/22',
                          keyboardType: TextInputType.datetime,
                          inputFormatters: [DateInputFormatter()],
                        ),
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
                        AuthField(
                            controller: _cvvCodeController, hintText: '483'),
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
                  Text('Save as a primary card',
                      style: AppTypography.kMedium15),
                ],
              ),
              SizedBox(height: 20.h),
              PrimaryButton(
                onTap: () {},
                text: 'Add Card',
                color:
                    isDarkMode(context) ? AppColors.kContentColor : AppColors.kInput,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
