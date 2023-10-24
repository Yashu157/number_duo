import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/confirm_phone_number_module/confirm_phone_number_controller.dart';
import 'package:sizer_pro/sizer.dart';

import '../../routes/app_pages.dart';
import '../../theme/app_colors.dart';


class ConfirmPhoneNumberPage extends GetView<ConfirmPhoneNumberController> {
  ConfirmPhoneNumberController confirmPhoneNumberController=Get.put<ConfirmPhoneNumberController>(ConfirmPhoneNumberController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: confirmPhoneNumberController,
        builder: (controller) {
          return Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 17.h,left: 2.w),
                      child: SvgPicture.asset('assets/images/change_number_icon.svg')
                  ),
                  SizedBox(height: 2.h,),
                  Text('+1 987-876-9876',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize:10.w ),),
                  Text('(New York)',style: TextStyle(fontSize:5.w,fontWeight: FontWeight.bold ),),
                  TextButton(onPressed: (){}, child: Text('Change Number',
                      style:TextStyle(decoration: TextDecoration.underline,color: buttonColor,fontSize: 4.w))),
                  Text('Confirm Your Virtual Number And Start',style: TextStyle(color: textColor,fontSize:4.w ),),
                  Text('Calling And Texting',style: TextStyle(color: textColor,fontSize:4.w)),
                  SizedBox(height: 4.h,),
                  Container(
                    height: 4.h,
                      width: 23.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.h),
                      color:Color(0xffDFDFDF),
                    ),
                    child:Center(child: Text('2.29 sec',style: TextStyle(color: Colors.black,fontSize: 6.sp,fontWeight: FontWeight.bold),textAlign: TextAlign.center,))
                  ),
                  Text('You have reserve this number',style: TextStyle(fontSize: 6.sp),),
                  SizedBox(height: 6.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h,right: 3.h),
                    child: ElevatedButton(onPressed: (){
                      Get.toNamed(Routes.PHONE_SUBSCRIPTION);
                    },
                        style: ElevatedButton.styleFrom(fixedSize: Size(5.h, 5.h),
                            backgroundColor: Color(0xff10AA99),
                            minimumSize: Size(double.maxFinite, 7.h),
                            shape:StadiumBorder() ),
                        child: Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(height: 1.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h,right: 3.h),
                    child: ElevatedButton(onPressed: ()=>Get.back(),

                        style: ElevatedButton.styleFrom(fixedSize: Size(5.h, 5.h),
                              side:BorderSide(color: buttonColor) ,
                            backgroundColor: Colors.white,
                            minimumSize: Size(double.maxFinite, 7.h),
                            shape:StadiumBorder() ),
                        child: Text('Go Back',style: TextStyle(color:buttonColor,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),
          );
        },);

  }
}
