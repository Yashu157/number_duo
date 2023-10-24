import 'package:number_duo/app/modules/confirm_phone_number_module/confirm_phone_number_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ConfirmPhoneNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmPhoneNumberController());
  }
}