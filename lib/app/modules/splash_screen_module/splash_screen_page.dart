import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/splash_screen_module/splash_screen_controller.dart';
import 'package:sizer_pro/sizer.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  SplashScreenController splashScreenController = Get.put<
      SplashScreenController>(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: splashScreenController,
        builder: (controller) {
          return Scaffold(

            body: Center(
              child: SvgPicture.asset('assets/images/img1.svg')
            ),
          );
        }
    );
  }
}
