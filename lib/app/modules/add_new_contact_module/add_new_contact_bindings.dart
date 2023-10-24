import 'package:number_duo/app/modules/add_new_contact_module/add_new_contact_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class AddNewContactBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewContactController());
  }
}