import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer_pro/sizer.dart';
import '../../routes/app_pages.dart';
import '../../theme/app_colors.dart';
import 'forget_password_controller.dart';

class ForgetPasswordPage extends GetView<ForgetPasswordController> {
  ForgetPasswordController forgetPasswordScreenController=Get.put<ForgetPasswordController>(ForgetPasswordController());
  ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: forgetPasswordScreenController,
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: ()=> Get.back(),
              icon: Icon(Icons.arrow_back, color: Colors.black,size: 12.sp,),
            ),
          ),
          resizeToAvoidBottomInset: false,
          body: GestureDetector(
              onTap: (){
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child:Padding(
                padding: EdgeInsets.only(left: 3.w,right: 3.w),
                child: Column(

                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:6.h ),
                      child: SvgPicture.asset('assets/images/forget_img.svg'),
                    ),
                    SizedBox(height: 1.h,),
                    Text('Forgot Password',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11.sp),),
                    SizedBox(height: 1.h,),
                    Text('Enter your registered email address we will and reset password there',
                      style: TextStyle(color: Colors.grey,fontSize: 7.sp),textAlign: TextAlign.center,),

                    SizedBox(height: 3.h,),
                    Align(
                      alignment: Alignment.centerLeft,
                        child: Text('Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp))),
                    TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Enter Email',

                      ),
                    ),
                    SizedBox(height: 5.h,),
                    ElevatedButton(onPressed: (){
                      Get.toNamed(Routes.UPDATE_PASSWORD);
                    },
                        style: ElevatedButton.styleFrom(fixedSize: Size(5.sp, 5.sp),

                            backgroundColor: buttonColor,
                            minimumSize: Size(double.maxFinite, 7.h),
                            shape:StadiumBorder()),
                        child: Text('Send Link',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                  ],
                ),
              )
          ),
        );
      },);
  }
}
