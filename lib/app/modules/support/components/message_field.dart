import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/widgets/animations/button_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageField extends StatelessWidget {
  final bool isFocused;
  final VoidCallback attachmentCallback;
  final VoidCallback emojiCallback;
  final VoidCallback sendCallback;
  final FocusNode focusNode;
  final TextEditingController controller;
  const MessageField(
      {super.key,
      required this.isFocused,
      required this.attachmentCallback,
      required this.emojiCallback,
      required this.sendCallback,
      required this.focusNode,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      isFocused
          ? const SizedBox()
          : IconButton(
              onPressed: attachmentCallback,
              icon: SvgPicture.asset(AppAssets.kAttachment),
            ),
      isFocused
          ? const SizedBox()
          : IconButton(
              onPressed: emojiCallback,
              icon: SvgPicture.asset(AppAssets.kEmoji),
            ),
      Expanded(
          child: AnimatedContainer(
        duration: Duration(seconds: 550),
        curve: Curves.elasticInOut,
        decoration: BoxDecoration(
          color: AppColors.kInput,
          borderRadius: BorderRadius.circular(AppSpacing.radiusForty),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                focusNode: focusNode,
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Type your massage',
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                  hintStyle: AppTypography.kLight13,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.r),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.r),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            ButtonAnimation(
              onTap: sendCallback,
              child: Container(
                  padding: EdgeInsets.all(9.h),
                  margin: EdgeInsets.only(right: 12.w),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.kPrimary,
                  ),
                  child: SvgPicture.asset(AppAssets.kSearch)),
            ),
          ],
        ),
      ))
    ]);
  }
}
