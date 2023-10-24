import 'package:number_duo/app/modules/my_contact_list_module/my_contact_list_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class MyContactListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyContactListController());
  }
}