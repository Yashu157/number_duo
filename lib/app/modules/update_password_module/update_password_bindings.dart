import 'package:number_duo/app/modules/update_password_module/update_password_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class UpdatePasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpdatePasswordController());
  }
}