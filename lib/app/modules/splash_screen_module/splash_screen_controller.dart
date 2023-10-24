import 'dart:async';

import 'package:get/get.dart';
import 'package:number_duo/app/routes/app_pages.dart';


class SplashScreenController extends GetxController{
@override
 void onInit(){
  super.onInit();
  Timer(Duration(seconds: 3),(){
    Get.offAllNamed(Routes.LOGIN_PAGE_SCREEN);
  });
}
}
