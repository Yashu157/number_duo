import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/change_password_module/change_password_controller.dart';
import 'package:sizer_pro/sizer.dart';

import '../../routes/app_pages.dart';
import '../../theme/app_colors.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ChangePasswordPage extends GetView<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(onPressed:()=>Get.back(), icon: Icon(Icons.arrow_back,color: Colors.black,),),
          ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.white,
        padding: EdgeInsets.only(left: 3.w,right: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(color: Colors.black,thickness: 0.02.h,),
            SizedBox(height: 4.h,),
            Text('Change Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.sp),),
            SizedBox(height: 1.h,),
            Text('New password should be different from last password',style: TextStyle(color:subTitleTextColor,fontWeight: FontWeight.w500,fontSize: 7.5.sp),),
            SizedBox(height: 8.h,),
            Text('Old Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp),),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: hintTextColor),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Enter Old Password',
              ),
            ),
            SizedBox(height: 4.h,),
            Text('New Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp),),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: hintTextColor),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Enter New Password',

              ),
            ),
            SizedBox(height: 4.h,),
            Text('Confirm Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp),),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Enter Password',
                hintStyle: TextStyle(color: hintTextColor)
              ),
            ),
            SizedBox(height: 6.h,),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(fixedSize: Size(5.sp, 5.sp),
                    backgroundColor: Color(0xff10AA99),
                    minimumSize: Size(double.maxFinite, 7.h),
                    shape:StadiumBorder() ),
                child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}
