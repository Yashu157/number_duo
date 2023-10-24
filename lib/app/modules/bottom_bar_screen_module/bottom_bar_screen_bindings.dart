import 'package:get/get.dart';

import 'bottom_bar_screen_controller.dart';

/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class BottomBarScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomBarScreenController());
  }
}