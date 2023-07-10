import 'package:door_hub/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendarStyle {
  static HeaderStyle getStyle() {
    return HeaderStyle(
      formatButtonVisible: false,
      titleCentered: true,
      titleTextStyle: AppTypography.kMedium18,
      headerMargin: EdgeInsets.only(bottom: 23.h),
      leftChevronMargin: EdgeInsets.zero,
      leftChevronPadding: EdgeInsets.zero,
      rightChevronMargin: EdgeInsets.zero,
      rightChevronPadding: EdgeInsets.zero,
    );
  }

  static CalendarStyle calendarStyle() {
    return CalendarStyle(
        outsideDaysVisible: false,
        defaultTextStyle: AppTypography.kMedium15,
        holidayTextStyle: AppTypography.kMedium15,
        isTodayHighlighted: false,
        weekendTextStyle: AppTypography.kMedium15,
        weekendDecoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5.r)),
        defaultDecoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5.r)),
        selectedDecoration: BoxDecoration(
            color: AppColors.kPrimary,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5.r)));
  }
}
