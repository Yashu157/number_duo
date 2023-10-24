import 'package:number_duo/app/modules/login_page_screen_module/login_page_screen_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class LoginPageScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginPageScreenController());
  }
}