import 'package:door_hub/app/modules/bookings/components/history_booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryBookings extends StatelessWidget {
  const HistoryBookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 1,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemBuilder: (context, index) {
          return const HistoryBookingCard();
        });
  }
}
