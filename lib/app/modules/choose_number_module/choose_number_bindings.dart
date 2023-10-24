import 'package:get/get.dart';

import 'choose_number_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ChooseNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseNumberController());
  }
}