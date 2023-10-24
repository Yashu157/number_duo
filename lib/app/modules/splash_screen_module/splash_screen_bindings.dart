import 'package:get/get.dart';
import 'package:number_duo/app/modules/splash_screen_module/splash_screen_controller.dart';


class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }
}