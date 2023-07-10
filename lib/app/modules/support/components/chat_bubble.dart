import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/data/helper/date_time_format.dart';
import 'package:door_hub/app/model/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBubble extends StatelessWidget {
  final ChatModel chat;
  const ChatBubble({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return chat.isSender
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(AppAssets.kLogo),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Door Hub', style: AppTypography.kMedium15),
                        SizedBox(width: 6.w),
                        Text(
                            CustomDateTimeFormat.notificationDateFormat(
                                chat.messageTime),
                            style: AppTypography.kLight13
                                .copyWith(color: AppColors.kHint)),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      chat.message,
                      style: AppTypography.kLight15,
                    )
                  ],
                ),
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                            CustomDateTimeFormat.notificationDateFormat(
                                chat.messageTime),
                            style: AppTypography.kLight13
                                .copyWith(color: AppColors.kHint)),
                        SizedBox(width: 6.w),
                        Text('You', style: AppTypography.kMedium15),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      chat.message,
                      style: AppTypography.kLight14,
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              CircleAvatar(
                backgroundImage: AssetImage(AppAssets.kProfilePic),
              ),
              SizedBox(width: 10.w),
            ],
          );
  }
}
