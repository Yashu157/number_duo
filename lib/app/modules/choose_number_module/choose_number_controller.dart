import 'package:country_state_picker/models/country.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ChooseNumberController extends GetxController{

  var selectedCountry = ''.obs;
  var selectedState = ''.obs;

  void onCountryChanged(String country) {
    selectedCountry.value = country;
  }

  void onStateChanged(String state) {
    selectedState.value = state;
  }




}
