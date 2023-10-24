import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer_pro/sizer.dart';
import '../../routes/app_pages.dart';
import '../../theme/app_colors.dart';
import 'login_page_screen_controller.dart';


class LoginPageScreenPage extends GetView<LoginPageScreenController> {
  LoginPageScreenController loginPageScreenController = Get.put<LoginPageScreenController>(LoginPageScreenController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: loginPageScreenController,
        builder: (controller) {
          return  Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  onPressed: ()=>Get.back(),
                  icon: Icon(Icons.arrow_back, color: Colors.black,size: 12.sp,),
                ),
              ),
              backgroundColor: Colors.white,
              resizeToAvoidBottomInset: false,
              body: GestureDetector(
                onTap:(){
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: SingleChildScrollView(
                  child: Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 3.w,right: 3.w),
                    child: Column(

                      children: [
                        SizedBox(height: 5.h,),
                        Text('Log In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                        SizedBox(height: 1.h,),
                        Text(' Please login into your Number Duo account',style: TextStyle(color: Colors.grey,fontSize: 8.sp),textAlign: TextAlign.center,),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp)),

                        TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                            hintText: 'Enter Email',

                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Text('Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp)),
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
                        SizedBox(height:2.h ),
                        InkWell(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('Forgot Password',style: TextStyle(
                                color:buttonColor,
                                fontSize: 6.sp,
                                fontWeight:FontWeight.bold ),),
                          ),
                          onTap: () {
                            Get.toNamed(Routes.FORGET_PASSWORD);
                          },
                        ),
                        SizedBox(height: 2.h,),
                        Padding(
                          padding: EdgeInsets.only(left: 3.w,right: 3.w),
                          child: ElevatedButton(onPressed: (){
                           Get.toNamed(Routes.BOTTOM_BAR_SCREEN);
                          },
                              style: ElevatedButton.styleFrom(fixedSize: Size(5.sp, 5.sp),
                                  backgroundColor: Color(0xff10AA99),
                                  minimumSize: Size(double.maxFinite, 7.h),
                                  shape:StadiumBorder() ),
                              child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                        ),
                        SizedBox(height: 7.h,),
                        Text('Or login with',
                          style: TextStyle(fontSize: 6.sp,
                              fontWeight: FontWeight.bold),),
                        SizedBox(height: 5.h,),
                        GestureDetector(
                            onTap: (){
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: SvgPicture.asset('assets/images/img3.svg')
                        )
                      ],
                    ),
                  ),
                ),
              )
          );
        });
  }
}
