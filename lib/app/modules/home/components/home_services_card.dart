import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/model/services_model.dart';
import 'package:door_hub/app/modules/categories/services_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeServicesCard extends StatelessWidget {
  final ServicesModel service;
  const HomeServicesCard({required this.service, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => ServicesDetailView(services: service));
      },
      child: Column(
        children: [
          Container(
            width: 139.w,
            height: 164.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                    image: AssetImage(service.image), fit: BoxFit.cover)),
          ),
          const Spacer(),
          Text(service.name, style: AppTypography.kMedium14),
        ],
      ),
    );
  }
}
