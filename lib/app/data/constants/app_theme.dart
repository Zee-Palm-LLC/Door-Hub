import 'package:door_hub/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.purple,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.kBackground,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: AppColors.kWhite,
      elevation: 0,
    ),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: AppColors.kPrimary.withOpacity(0.1)),
      labelStyle: AppTypography.kMedium14,
      unselectedLabelStyle: AppTypography.kMedium14,
      labelColor: AppColors.kPrimary,
      unselectedLabelColor: Colors.black,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppTypography.kMedium14.copyWith(color: AppColors.kHint),
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppSpacing.twentyHorizontal,
        vertical: 16.h,
      ),
      filled: true,
      fillColor: AppColors.kInput,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSpacing.radiusTen)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSpacing.radiusTen)),
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSpacing.radiusTen)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppSpacing.radiusTen)),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.kWhite,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );

  // static ThemeData darkTheme = ThemeData(
  //   primarySwatch: Colors.teal,
  //   brightness: Brightness.dark,
  //   scaffoldBackgroundColor: AppColors.kSecondary,
  //   appBarTheme: AppBarTheme(
  //     iconTheme: const IconThemeData(
  //       color: Colors.white,
  //     ),
  //     backgroundColor: AppColors.kSecondary,
  //     elevation: 0,
  //   ),
  //   tabBarTheme: TabBarTheme(
  //     labelPadding: EdgeInsets.only(
  //       left: 10,
  //       right: AppSpacing.tenHorizontal,
  //     ),
  //     indicatorSize: TabBarIndicatorSize.label,
  //     labelColor: AppColors.kWhite,
  //     unselectedLabelColor: Colors.grey,
  //   ),
  //   fontFamily: 'Hanken Grotesk',
  //   inputDecorationTheme: InputDecorationTheme(
  //     contentPadding: EdgeInsets.symmetric(
  //       horizontal: AppSpacing.twentyHorizontal,
  //       vertical: 16.h,
  //     ),
  //     enabledBorder: const OutlineInputBorder(
  //       borderSide: BorderSide.none,
  //     ),
  //     focusedBorder: const OutlineInputBorder(
  //       borderSide: BorderSide.none,
  //     ),
  //     border: const OutlineInputBorder(
  //       borderSide: BorderSide.none,
  //     ),
  //     errorBorder: const OutlineInputBorder(
  //       borderSide: BorderSide.none,
  //     ),
  //   ),
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     type: BottomNavigationBarType.fixed,
  //     backgroundColor: Colors.black,
  //     elevation: 0,
  //     showSelectedLabels: false,
  //     showUnselectedLabels: false,
  //   ),
  // );
}

// Default Overlay.
SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarBrightness: Brightness.dark,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.black,
  systemNavigationBarDividerColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.light,
);

SystemUiOverlayStyle customOverlay = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarBrightness: Brightness.dark,
  statusBarIconBrightness: Brightness.dark,
);
