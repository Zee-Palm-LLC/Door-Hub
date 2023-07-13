import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/bookings/draft_bookings.dart';
import 'package:door_hub/app/modules/bookings/history_booking.dart';
import 'package:door_hub/app/modules/bookings/upcoming_booking.dart';
import 'package:door_hub/app/modules/widgets/containers/primary_container.dart';
import 'package:door_hub/app/modules/widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingsView extends StatelessWidget {
  const BookingsView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: CustomHeaderText(
              text: 'Bookings',
              fontColor: isDarkMode(context) ? AppColors.kWhite : Colors.black),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.h),
              child: PrimaryContainer(
                padding: EdgeInsets.all(10.h),
                child: const TabBar(
                  tabs: [
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: 'History',
                    ),
                    Tab(
                      text: 'Draft',
                    )
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  UpComingBookings(),
                  HistoryBookings(),
                  DraftBookings(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
