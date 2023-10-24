import 'package:number_duo/app/modules/privacy_policy_module/privacy_policy_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class PrivacyPolicyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrivacyPolicyController());
  }
}