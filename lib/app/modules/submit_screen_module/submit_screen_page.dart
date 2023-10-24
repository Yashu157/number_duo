import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/submit_screen_module/submit_screen_controller.dart';
import 'package:sizer_pro/sizer.dart';

import '../../routes/app_pages.dart';

class SubmitScreenPage extends GetView<SubmitScreenController> {
  SubmitScreenController submitScreenController = Get.put<SubmitScreenController>(SubmitScreenController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: submitScreenController,
        builder:(controller) {
          return Scaffold(

            backgroundColor: Colors.white,
            body: Column(
              children: [
                Padding(
                  padding:EdgeInsets.symmetric(vertical:10.h ),
                  child: SvgPicture.asset('assets/images/congratulation_img.svg'),

                ),
          Text('Congratulations',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                SizedBox(height: 1.h,),
                Text('Your password has been changes successfully',style: TextStyle(color: Colors.grey,fontSize: 8.sp),textAlign: TextAlign.center,),

                SizedBox(height: 4.h,),
                Padding(
                  padding: EdgeInsets.only(left: 17.w,right: 17.w),
                  child: ElevatedButton(onPressed: (){
                  Get.toNamed(Routes.LOGIN_PAGE_SCREEN);
                  },
                      style: ElevatedButton.styleFrom(fixedSize: Size(5.sp, 5.sp),
                          minimumSize: Size(double.maxFinite, 7.h),
                          backgroundColor: Color(0xff10AA99),
                          shape:StadiumBorder() ),
                      child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                ),

              ],
            ),

          );

        },
    );

  }
}
