import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/model/booking_model.dart';
import 'package:door_hub/app/modules/bookings/components/booking_service_card.dart';
import 'package:door_hub/app/modules/bookings/components/status_card.dart';
import 'package:door_hub/app/modules/widgets/animations/fade_animations.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DraftBookingCard extends StatelessWidget {
  final BookingModel booking;
  const DraftBookingCard({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      child: PrimaryContainer(
          child: Column(
        children: [
          BookingServiceCard(booking: booking),
          Divider(height: 25.h),
          Row(
            children: [
              Text('Status', style: AppTypography.kLight14),
              const Spacer(),
              BookingStatusCard(status: booking.status)
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Text('Schedule', style: AppTypography.kLight14),
              const Spacer(),
              Text('8:00-9:00 AM, Dec 9', style: AppTypography.kLight14),
            ],
          ),
        ],
      )),
    );
  }
}
