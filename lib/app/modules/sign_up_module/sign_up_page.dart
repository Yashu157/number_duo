import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/sign_up_module/sign_up_controller.dart';
import 'package:number_duo/app/routes/app_pages.dart';
import 'package:number_duo/app/theme/app_colors.dart';
import 'package:sizer_pro/sizer.dart';


class SignUpPage extends GetView<SignUpController> {
  SignUpController signUpController=Get.put<SignUpController>(SignUpController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: signUpController,
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: ()=>Get.back(),
              icon: Icon(Icons.arrow_back, color: Colors.black,size: 12.sp,),
            ),
          ),

          body: GestureDetector(
            onTap:(){
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 3.w,right: 3.w),
                child: Column(
                  children: [
                     SizedBox(height:5.h,),
                    Text('Let’s Get Started',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),textAlign: TextAlign.center,),
                    SizedBox(height: 1.h,),
                    Text('Please sign up into your Number Duo to access all features.',style: TextStyle(fontSize: 7.sp,color: Colors.grey),
                      textAlign:TextAlign.center ,),
                    SizedBox(height: 5.h,),
                    Container(
                        height: 4.h,
                        width: 23.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.h),
                          color:Color(0xffDFDFDF),
                        ),
                        child:Center(child: Text('2.29 sec',style: TextStyle(color: Colors.black,fontSize: 6.sp,fontWeight: FontWeight.bold),textAlign: TextAlign.center,))
                    ),
                    SizedBox(height: 1.h,),
                    Text('You have reserve this number',style: TextStyle(fontSize: 6.sp),),
                    SizedBox(height: 5.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp),),

                    TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Enter Email',

                      ),
                    ),
                    SizedBox(height: 3.h,),
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
                        hintText: 'Re-Enter Password',
                      ),
                    ),
                      ],
                    ),
                    SizedBox(height: 3.h,),
                    RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'By continuing you agree to Number Duo  ',
                        style: TextStyle(fontSize: 7.sp
                            , color: Color(0xff545454)),
                      ),
                      TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                          fontSize: 7.sp,
                          color: buttonColor,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle the "Privacy Policy" link click here

                          },
                      ),
                      TextSpan(
                        text: '   '
                      ),
                      TextSpan(
                        text: 'of use and',
                        style: TextStyle(fontSize: 7.sp, color: Color(0xff545454))
                      ),
                      TextSpan(
                        text: '   '
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          fontSize: 7.sp,
                          color:buttonColor,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle the "Terms of Service" link click here
                            print('Terms of Service link clicked');
                          },
                      ),
                    ],
                  ),

                ),
                    SizedBox(height: 5.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h,right: 3.h),
                      child: ElevatedButton(onPressed: (){
Get.toNamed(Routes.PURCHASED_VIRTUAL_NUMBER);
                      },
                          style: ElevatedButton.styleFrom(fixedSize: Size(5.h, 5.h),
                              backgroundColor: Color(0xff10AA99),
                              minimumSize: Size(double.maxFinite, 7.h),
                              shape:StadiumBorder() ),
                          child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
    },);

  }
}
