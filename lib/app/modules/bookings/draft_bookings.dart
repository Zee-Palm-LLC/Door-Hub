import 'package:door_hub/app/model/booking_model.dart';
import 'package:door_hub/app/modules/bookings/components/draft_booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DraftBookings extends StatelessWidget {
  const DraftBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: draftsBookings.length,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemBuilder: (context, index) {
          return DraftBookingCard(
            booking: draftsBookings[index],
          );
        });
  }
}
