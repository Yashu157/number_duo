import 'package:number_duo/app/modules/my_contact_module/my_contact_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class MyContactBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyContactController());
  }
}