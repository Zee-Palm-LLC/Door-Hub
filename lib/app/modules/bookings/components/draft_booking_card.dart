import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/bookings/components/booking_service_card.dart';
import 'package:door_hub/app/modules/bookings/components/status_card.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DraftBookingCard extends StatelessWidget {
  const DraftBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
        child: Column(
      children: [
        const BookingServiceCard(),
        Divider(height: 25.h),
        Row(
          children: [
            Text('Status', style: AppTypography.kLight14),
            const Spacer(),
            const BookingStatusCard()
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
    ));
  }
}
