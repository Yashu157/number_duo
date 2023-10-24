import 'package:number_duo/app/modules/phone_subscription_module/phone_subscription_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class PhoneSubscriptionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneSubscriptionController());
  }
}