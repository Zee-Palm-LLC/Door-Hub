import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/modules/address/address_view.dart';
import 'package:door_hub/app/modules/calendar/calendar_view.dart';
import 'package:door_hub/app/modules/notifications/notification_view.dart';
import 'package:door_hub/app/modules/offers/offers_view.dart';
import 'package:door_hub/app/modules/payment/payment_view.dart';
import 'package:door_hub/app/modules/profile/components/profile_image_card.dart';
import 'package:door_hub/app/modules/profile/profile_view.dart';
import 'package:door_hub/app/modules/refer_friend/refer_friend_view.dart';
import 'package:door_hub/app/modules/widgets/drawer/side_menu.dart';
import 'package:door_hub/app/modules/widgets/drawer/toogle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.kPrimary,
      child: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              ProfileImageCard(
                onTap: () {
                  Future.delayed(const Duration(milliseconds: 100))
                      .then((value) {
                    Get.back();
                    Get.to(() => const ProfileView());
                  });
                },
              ),
              SizedBox(height: 50.h),
              SideMenu(
                onPressed: () {
                  setState(() {
                    selectedMenu = 0;
                  });
                  Future.delayed(const Duration(milliseconds: 500))
                      .then((value) {
                    Get.back();
                    Get.to(() => const CalendarView());
                  });
                },
                icon: AppAssets.kCalendar,
                isSelected: selectedMenu == 0,
                text: 'Calendar',
              ),
              SizedBox(height: 10.h),
              SideMenu(
                onPressed: () {
                  setState(() {
                    selectedMenu = 1;
                  });
                  Future.delayed(const Duration(milliseconds: 500))
                      .then((value) {
                    Get.back();
                    Get.to(() => const PaymentMethodView());
                  });
                },
                icon: AppAssets.kPaymentMethod,
                isSelected: selectedMenu == 1,
                text: 'Payment Methods',
              ),
              SizedBox(height: 5.h),
              SideMenu(
                onPressed: () {
                  setState(() {
                    selectedMenu = 2;
                  });
                  Future.delayed(const Duration(milliseconds: 500))
                      .then((value) {
                    Get.back();
                    Get.to(() => const AddressView());
                  });
                },
                icon: AppAssets.kAddress,
                isSelected: selectedMenu == 2,
                text: 'Address',
              ),
              SizedBox(height: 5.h),
              SideMenu(
                onPressed: () {
                  setState(() {
                    selectedMenu = 3;
                  });
                  Future.delayed(const Duration(milliseconds: 500))
                      .then((value) {
                    Get.back();
                    Get.to(() => const NotificationView());
                  });
                },
                icon: AppAssets.kNotification,
                isSelected: selectedMenu == 3,
                text: 'Notifications',
              ),
              SizedBox(height: 5.h),
              SideMenu(
                onPressed: () {
                  setState(() {
                    selectedMenu = 4;
                  });
                  Future.delayed(const Duration(milliseconds: 500))
                      .then((value) {
                    Get.back();
                    Get.to(() => const OffersView());
                  });
                },
                icon: AppAssets.kOffers,
                isSelected: selectedMenu == 4,
                text: 'Offers',
              ),
              SizedBox(height: 5.h),
              SideMenu(
                onPressed: () {
                  setState(() {
                    selectedMenu = 5;
                  });
                  Future.delayed(const Duration(milliseconds: 500))
                      .then((value) {
                    Get.back();
                    Get.to(() => const ReferFriend());
                  });
                },
                icon: AppAssets.kFriends,
                isSelected: selectedMenu == 5,
                text: 'Refer a Friend',
              ),
              SizedBox(height: 5.h),
              SideMenu(
                onPressed: () {
                  setState(() {
                    selectedMenu = 6;
                  });
                },
                icon: AppAssets.kSupport,
                isSelected: selectedMenu == 6,
                text: 'Support',
              ),
              const Spacer(),
              const Divider(
                color: AppColors.kHint,
              ),
              SideMenu(
                onPressed: () {},
                isSelected: false,
                icon: AppAssets.kHelp,
                text: 'Color Scheme',
              ),
              ToggleButton(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
