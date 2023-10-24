import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer_pro/sizer.dart';

import '../../routes/app_pages.dart';
import '../../theme/app_colors.dart';
import '../update_password_module/update_password_controller.dart';

class UpdatePasswordPage extends GetView<UpdatePasswordController> {

  UpdatePasswordController updatePasswordController = Get.put<UpdatePasswordController>(UpdatePasswordController());
 @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: updatePasswordController,
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white ,
              elevation: 0,

            ),
            resizeToAvoidBottomInset: false,
            body: GestureDetector(
                onTap: (){
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child:Padding(
                  padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical:6.h ),
                          child: SvgPicture.asset('assets/images/forget_img.svg')
                      ),
                      SizedBox(height: 1.h,),
                      Text('Updated Password',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11.sp),),
                      SizedBox(height: 1.h,),
                      Text('Please create your new password',
                        style: TextStyle(color: Colors.grey,fontSize: 6.sp),),

                      SizedBox(height: 3.h,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp),),

                      TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                          hintText: 'Enter Password',
                        ),
                      ),
                      SizedBox(height: 3.h,),
                      Text('Confirm Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp),),
                      TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                          hintText: 'Enter Password',

                        ),
                      ),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      ElevatedButton(onPressed: (){
                        Get.toNamed(Routes.SUBMIT_SCREEN);
                      },
                          style: ElevatedButton.styleFrom(fixedSize: Size(5.h, 5.h),
                              minimumSize: Size(double.maxFinite, 7.h),
                              backgroundColor: buttonColor,
                              shape:StadiumBorder()
                          ),
                          child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                )
            ),
          );

        },);






  }
}
