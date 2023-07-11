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
            padding: EdgeInsets.all(9.h),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                    image: AssetImage(service.image), fit: BoxFit.cover)),
            child: service.discount != null
                ? Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Text(
                      service.discount!,
                      style: AppTypography.kMedium12
                          .copyWith(color: AppColors.kWhite),
                    ),
                  )
                : null,
          ),
          const Spacer(),
          Text(service.name, style: AppTypography.kMedium14),
        ],
      ),
    );
  }
}
