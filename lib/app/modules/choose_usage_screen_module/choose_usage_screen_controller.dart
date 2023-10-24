import 'package:get/get.dart';

class ChooseUsageScreenController extends GetxController{

  final selectedValue = 0.obs; // Use .obs to make it reactive

  void changeSelectedValue(int value) {
    selectedValue(value);
  }
}
