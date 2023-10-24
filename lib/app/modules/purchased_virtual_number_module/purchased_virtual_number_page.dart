import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/purchased_virtual_number_module/purchased_virtual_number_controller.dart';
import 'package:number_duo/app/routes/app_pages.dart';
import 'package:sizer_pro/sizer.dart';


class PurchasedVirtualNumberPage extends GetView<PurchasedVirtualNumberController> {
  PurchasedVirtualNumberController purchasedVirtualNumberController=Get.put<PurchasedVirtualNumberController>(PurchasedVirtualNumberController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: purchasedVirtualNumberController,
      builder: (controller) {
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
              Text('You have purchased your virtual number'
                ,style: TextStyle(color: Colors.grey,fontSize: 8.sp),textAlign: TextAlign.center,),

              SizedBox(height: 4.h,),
              Padding(
                padding: EdgeInsets.only(left: 17.w,right: 17.w),
                child: ElevatedButton(onPressed: (){
                  Get.toNamed(Routes.CHANGE_PASSWORD);
                },
                    style: ElevatedButton.styleFrom(fixedSize: Size(5.sp, 5.sp),
                        minimumSize: Size(double.maxFinite, 7.h),
                        backgroundColor: Color(0xff10AA99),
                        shape:StadiumBorder() ),
                    child: Text('Okay',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
              ),

            ],
          ),
        );
    },);

  }
}
