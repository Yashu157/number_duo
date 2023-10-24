import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer_pro/sizer.dart';

import '../../routes/app_pages.dart';
import '../../theme/app_colors.dart';
import 'choose_usage_screen_controller.dart';

class ChooseUsageScreenPage extends GetView<ChooseUsageScreenController> {
  ChooseUsageScreenController chooseUsageScreenController= Get.put<ChooseUsageScreenController>(ChooseUsageScreenController());


  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: chooseUsageScreenController,
      builder: (controller) {
        return Scaffold(
backgroundColor: Colors.white,
          body: Container(
            child: Padding(
              padding:  EdgeInsets.only(left: 3.w,right: 3.w),
              child: Column(
                children: [
                  SizedBox(height: 10.h,),
                  Text('What Will Be Your Main Use Of Number Duo',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),textAlign: TextAlign.center,),

                  SizedBox(height: 1.h,),
                  Text('It is the long established fact that the reader will be distracted by the readable content of a page looking at its layout'
                    ,style: TextStyle(color: Colors.grey,fontSize: 7.sp),textAlign: TextAlign.center,),
                  Padding(
                    padding: EdgeInsets.all(3.h),
                    child: Obx(() => Container(
                      height: 15.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: controller.selectedValue.value==0? buttonColor:containerColor),
                          borderRadius: BorderRadius.circular(2.sp)
                      ),
                      child: Center(
                        child: RadioListTile(
                          title: Text('Personal',style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('Talking with family,friends,online,dating',style: TextStyle(fontSize: 6.sp),),
                          value: 0,
                          groupValue: controller.selectedValue.value,
                          fillColor: MaterialStateColor.resolveWith((states) =>controller.selectedValue.value==0? buttonColor:containerColor),
                          onChanged: (value) {
                            controller.changeSelectedValue(value!);
                          },
                        ),
                      ),

                    ),)
                  ),
                  Obx(() =>  Padding(
                    padding:  EdgeInsets.only(left: 6.w,right: 6.w),
                    child: Container(
                      height: 15.h,
                      decoration: BoxDecoration(
                          border: Border.all(color:controller.selectedValue.value==1? buttonColor:containerColor),
                          borderRadius: BorderRadius.circular(2.sp)
                      ),
                      child: Center(
                        child: RadioListTile(
                          title: Text('Work',style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('Talk with clients,Marketing,Sales,Appointments',style: TextStyle(fontSize: 6.sp),),
                          value: 1,
                          groupValue: controller.selectedValue.value,
                          fillColor: MaterialStateColor.resolveWith((states) =>  controller.selectedValue.value==1?buttonColor:containerColor),
                          onChanged: (value) {
                            controller.changeSelectedValue(value!);
                          },
                        ),
                      ),
                    ),
                  ),),
                  SizedBox(height: 5.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 7.w,right: 7.w),
                    child: ElevatedButton(onPressed: (){
                      Get.toNamed(Routes.CHOOSE_NUMBER);
                    },
                        style: ElevatedButton.styleFrom(

                            minimumSize: Size(double.maxFinite, 7.h),
                            backgroundColor: buttonColor,
                            shape:StadiumBorder()
                        ),
                        child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                  ),

                ],
              ),
            ),
          ),
        );
    },
    );

  }
}
