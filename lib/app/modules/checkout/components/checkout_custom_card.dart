import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/widgets/buttons/custom_button.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:door_hub/app/modules/widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutCustomCard extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CheckoutCustomCard(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: PrimaryContainer(
        child: Row(
          children: [
            CustomHeaderText(text: text, fontSize: 18.sp),
            const Spacer(),
            IgnorePointer(
              ignoring: true,
              child: CustomButton(
                onTap: (){},
                icon: AppAssets.kAddRounded,
                text: 'Add',
                isBorder: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
