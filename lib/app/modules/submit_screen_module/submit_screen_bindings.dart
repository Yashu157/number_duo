import 'package:get/get.dart';
import 'package:number_duo/app/modules/submit_screen_module/submit_screen_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class SubmitScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubmitScreenController());
  }
}