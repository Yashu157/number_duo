import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/phone_subscription_module/phone_subscription_controller.dart';
import 'package:number_duo/app/routes/app_pages.dart';
import 'package:number_duo/app/theme/app_colors.dart';
import 'package:sizer_pro/sizer.dart';


class PhoneSubscriptionPage extends GetView<PhoneSubscriptionController> {
  PhoneSubscriptionController phoneSubscriptionController = Get.put<PhoneSubscriptionController>(PhoneSubscriptionController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: phoneSubscriptionController,
      builder: (controller) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(backgroundColor: buttonColor,
            elevation: 0,
            leading: BackButton(
            onPressed: ()=>Get.back()
        ),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
        preferredSize: Size.fromHeight(30.h), child: Container(
        child: Column(
        children: [
          Text('+1 987-876-9876',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize:10.sp,color: Colors.white ),),
          Text('(New York)',style: TextStyle(fontSize:8.sp,fontWeight: FontWeight.bold,color: Colors.white ),),
         SizedBox(height: 1.h,),
          Container(
              height: 3.5.h,
              width: 20.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.h),
                color:Colors.white,
              ),
              child:Center(child: Text('2.29 sec',style: TextStyle(color: Colors.black,fontSize: 6.sp,fontWeight: FontWeight.bold),textAlign: TextAlign.center,))
          ),
                 SizedBox(height: 1.h,),
                 Text('Unlimited Call Forwarding',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 4.w),),
          SizedBox(height: 1.h,),
          Text('It is a long established fact that a reader',
            style: TextStyle(color: Colors.white),),
          SizedBox(height: 0.3.h,),
          Text('will be distracted by the readable',style: TextStyle(color: Colors.white),),
           SizedBox(height: 2.h ,),
DotsIndicator(dotsCount: 3,decorator: DotsDecorator(color: dotIndicatorColor,activeColor: Colors.white),),
          SizedBox(height: 2.h,)
        ],
        ),
        ),
        ),
            ),

        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(

              children: [
                SizedBox(height: 3.h,),
                Text('Price Plan',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:11.sp),),
                Text('Choose subscription plan unlock all the features',
                  style: TextStyle(color: Colors.black,fontSize: 7.sp),
                  textAlign: TextAlign.center,),
                 SizedBox(height: 3.h,),
                Obx(() =>  Container(
                  height: 9.h,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 7.h,
                          decoration: BoxDecoration(
                              border: Border.all(color:controller.isChecked1.value?buttonColor:containerColor),
                              borderRadius: BorderRadius.circular(2.sp)
                          ),
                          child: Center(
                                child:  CheckboxListTile(
                                  checkboxShape: CircleBorder(),
                                  title: Text('Yearly 500(41/Month)',style: TextStyle(fontWeight: FontWeight.bold,color: controller.isChecked1.value?buttonColor:Colors.black)),
                                  value: controller.isChecked1.value,

                                  checkColor: Colors.white,
                                  activeColor: buttonColor,
                                  fillColor: MaterialStateColor.resolveWith((states) =>controller.isChecked1.value? buttonColor:Colors.white),
                                  onChanged: (value) => controller.isChecked1.value = value!,
                                )),
                          ),
                      ),
                      Positioned(
                        right: 10.w,
                        top: 0,
                        child:  Container(
                          height: 2.8.h,
                          width: 20.w,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.7.h),
                              color: Colors.amber
                          ),
                          child: Text('Save 20%',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        ),),

                    ],
                  ),
                ),
                ),
                SizedBox(height:1.h,),
                Obx(() => Container(
                  height: 7.h,
                  decoration: BoxDecoration(
                      border: Border.all(color:controller.isChecked2.value?buttonColor:containerColor),
                      borderRadius: BorderRadius.circular(2.sp)
                  ),
                  child: Center(
                    child:CheckboxListTile(
                      checkboxShape: CircleBorder(),
                      title: Text('Monthly',style: TextStyle(fontWeight: FontWeight.bold,color: controller.isChecked2.value?buttonColor:Colors.black)),
                      value: controller.isChecked2.value,
                      checkColor: Colors.white,  // color of tick Mark
                      activeColor: buttonColor,
                      fillColor: MaterialStateColor.resolveWith((states) =>controller.isChecked2.value? buttonColor:Colors.white),
                      onChanged: (value) => controller.isChecked2.value = value!,
                    )),
                  ),

                ),
                SizedBox(height: 2.h,),
                Obx(() =>Container(
                  height: 7.h,
                  decoration: BoxDecoration(
                      border: Border.all(color:controller.isChecked3.value?buttonColor:containerColor),
                      borderRadius: BorderRadius.circular(2.sp)
                  ),
                  child: Center(
                    child:   CheckboxListTile(
                      checkboxShape: CircleBorder(),
                      title: Text('Weekly',style: TextStyle(fontWeight: FontWeight.bold,color: controller.isChecked3.value?buttonColor:Colors.black)),
                      value: controller.isChecked3.value,
                      checkColor: Colors.white,
                      activeColor: buttonColor,
                      fillColor: MaterialStateColor.resolveWith((states) =>controller.isChecked3.value? buttonColor:Colors.white),
                      onChanged: (value) => controller.isChecked3.value = value!,
                    )),
                  ),

                ),
                SizedBox(height: 4.h,),
                Padding(
                  padding: EdgeInsets.only(left: 3.h,right: 3.h),
                  child: ElevatedButton(onPressed: (){
                          Get.toNamed(Routes.SIGN_UP);
                  },
                      style: ElevatedButton.styleFrom(fixedSize: Size(5.h, 5.h),
                          backgroundColor: Color(0xff10AA99),
                          minimumSize: Size(double.maxFinite, 7.h),
                          shape:StadiumBorder() ),
                      child: Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                ),



              ],
            ),
          ),
        ),
        );
    },);

  }
}
