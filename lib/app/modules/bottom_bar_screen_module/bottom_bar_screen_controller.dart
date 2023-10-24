import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/home_screen_module/home_screen_page.dart';
import 'package:number_duo/app/modules/my_contact_module/my_contact_page.dart';




class BottomBarScreenController extends GetxController{


  RxInt selectedIndex = 0.obs;
  Rx<Color> selectedColor = Colors.white.obs;
    List<Widget> widgetOptions = <Widget>[
    HomeScreenPage(),
      MyContactPage(),
    Text(
      'Index 2: School',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 2: School',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 2: School',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
  ];
  void onItemTapped(int index) {
      selectedIndex.value = index;
  }

}
