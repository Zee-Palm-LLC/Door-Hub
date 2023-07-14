import 'package:door_hub/app/controllers/theme_controller.dart';
import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/routes/app_routes.dart';
import 'package:door_hub/app/services/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(defaultOverlay);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    print(themeController.theme);
    return ScreenUtilInit(
      designSize: const Size(375, 844),
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: GetMaterialApp(
            useInheritedMediaQuery: true,
            title: 'Door Hub',
            debugShowCheckedModeBanner: false,
            scrollBehavior: const ScrollBehavior()
                .copyWith(physics: const BouncingScrollPhysics()),
            defaultTransition: Transition.fadeIn,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: getThemeMode(themeController.theme),
            locale: const Locale('en_US'),
            initialRoute: AppRoutes.getOnboardingRoute(),
            getPages: AppRoutes.routes,
          ),
        );
      },
    );
  }
}
