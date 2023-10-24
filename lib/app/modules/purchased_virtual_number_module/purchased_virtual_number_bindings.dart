import 'package:number_duo/app/modules/purchased_virtual_number_module/purchased_virtual_number_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class PurchasedVirtualNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PurchasedVirtualNumberController());
  }
}