import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer_pro/sizer.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';
import 'app/modules/splash_screen_module/splash_screen_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return   GetMaterialApp(
            getPages: AppPages.pages,
            debugShowCheckedModeBanner: false,
            title: "Number Duo",
            theme: appThemeData,
            home:SplashScreenPage(),
          );
        }
    );
  }}
