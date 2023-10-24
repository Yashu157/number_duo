import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/my_contact_module/my_contact_controller.dart';
import 'package:number_duo/app/routes/app_pages.dart';
import 'package:sizer_pro/sizer.dart';

import '../../theme/app_colors.dart';


class MyContactPage extends GetView<MyContactController> {
  MyContactController myContactController= Get.put<MyContactController>(MyContactController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(init: myContactController,
        builder:(controller) {
          return Scaffold(
            backgroundColor: Colors.white,
appBar: AppBar(
  elevation: 0,
  backgroundColor: Colors.white,
 bottom: PreferredSize(
              preferredSize: Size.fromHeight(6.h), child: Container(
   padding: EdgeInsets.all(3.0.h),
   child: Column(
     children: [
     Text('My Contact',style: TextStyle(fontSize: 9.sp,color: Colors.black),)
     ],
 ),
 ),
),
),
            body: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 8.h,),
                  SvgPicture.asset('assets/images/my_contact_img.svg'),
                  SizedBox(height:2.h ),
                  Text('No contact added yet',style: TextStyle(color: Colors.grey,fontSize: 6.sp),),
                  SizedBox(height: 6.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h,right: 3.h),
                    child: ElevatedButton(onPressed: (){
                       Get.toNamed(Routes.ADD_NEW_CONTACT);
                    },
                        style: ElevatedButton.styleFrom(fixedSize: Size(5.h, 5.h),
                            backgroundColor: Color(0xff10AA99),
                            minimumSize: Size(double.maxFinite, 7.h),
                            shape:StadiumBorder() ),
                        child: Text('Add New Contact',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
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
                        child: Text('Import Contact From Phone',style: TextStyle(color:buttonColor,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),

            ),
          );
        }, );

  }
}
