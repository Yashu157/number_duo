import 'package:number_duo/app/modules/forget_password_module/forget_password_controller.dart';
import 'package:get/get.dart';

class ForgetPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordController());
  }
}