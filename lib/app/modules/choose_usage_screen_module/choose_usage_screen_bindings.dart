import 'package:get/get.dart';

import 'choose_usage_screen_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ChooseUsageScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseUsageScreenController());
  }
}