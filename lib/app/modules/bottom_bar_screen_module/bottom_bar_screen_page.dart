import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../theme/app_colors.dart';
import 'bottom_bar_screen_controller.dart';


class BottomBarScreenPage extends GetView<BottomBarScreenController> {
  BottomBarScreenController bottomBarScreenController=Get.put<BottomBarScreenController>(BottomBarScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: bottomBarScreenController,
        builder:(controller) {
          return Scaffold(
              body: Obx(()=>Center(
                child: bottomBarScreenController.widgetOptions.elementAt(bottomBarScreenController.selectedIndex.value),
              ),),
              bottomNavigationBar: Obx(() => BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: bottomBarColor,
                items:  <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/images/homeicon.svg"),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/images/phoneBookIcon.svg"),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/images/clockIcon.svg"),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/images/gridIcon.svg"),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/images/chatIcon.svg"),
                    label: '',
                  ),
                ],
                currentIndex: bottomBarScreenController.selectedIndex.value,
                selectedItemColor:Colors.white ,
                onTap: bottomBarScreenController.onItemTapped,

              ),)

          );
        }
      );
  }

  }


