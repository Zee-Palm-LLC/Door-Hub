import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/model/services_model.dart';
import 'package:door_hub/app/modules/categories/components/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailImageHeader extends StatelessWidget {
  final ServicesModel service;
  const DetailImageHeader({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: Get.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(service.image),
        fit: BoxFit.cover,
      )),
      child: Stack(children: [
        Container(
          height: 270.h,
          width: Get.width,
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SecondaryRatingWidget(
                  service: service, color: const Color(0xFFFB9450)),
              Text(
                service.name,
                style: AppTypography.kBold24.copyWith(color: AppColors.kWhite),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
