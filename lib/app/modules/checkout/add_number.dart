import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/checkout/components/phone_number_card.dart';
import 'package:door_hub/app/modules/home/components/search_field.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_button.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:door_hub/app/modules/widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPhoneNumberView extends StatefulWidget {
  const AddPhoneNumberView({super.key});

  @override
  State<AddPhoneNumberView> createState() => _AddPhoneNumberViewState();
}

class _AddPhoneNumberViewState extends State<AddPhoneNumberView> {
  final _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            PrimaryContainer(
                child: Column(
              children: [
                CustomHeaderText(text: 'Phone number', fontSize: 18.sp),
                SizedBox(height: 16.h),
                SearchField(
                    controller: _phoneNumberController,
                    hintText: 'Phone Number',
                    isSearchField: false,
                    buttonText: 'Save',
                    onSearchPress: () {})
              ],
            )),
            SizedBox(height: 20.h),
            PrimaryContainer(
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomHeaderText(text: 'Phone Number', fontSize: 18.sp),
                      const Spacer(),
                      CustomButton(
                        text: 'Change',
                        icon: AppAssets.kEdit,
                        onTap: () {},
                        isBorder: true,
                      )
                    ],
                  ),
                  SizedBox(height: 16.h),
                  const PhoneNumberCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
