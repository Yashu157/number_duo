import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/notification_module/notification_controller.dart';
import 'package:sizer_pro/sizer.dart';
import '../../theme/app_colors.dart';

class NotificationPage extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(onPressed:()=>Get.back(), icon: Icon(Icons.arrow_back,color: Colors.black,),),
          title: Text('Notification',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)),
      body: Container(
        height:double.maxFinite,
        width:double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(color: Colors.black,thickness: 0.02.h,),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Today, Sep 18 2023',style: TextStyle(color: notificationTextColor,fontWeight: FontWeight.w500,fontSize: 7.sp),),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Text('Your phone + 987-876-9876 going to suspend in 4 days',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 6.sp),),
                ),
                SizedBox(height: 2.h),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('2:30 PM',style: TextStyle(color: notificationTextColor,fontWeight: FontWeight.w500,fontSize: 6.sp),)),
                Text('Yesterday, Sep 17 2023',style: TextStyle(color: notificationTextColor,fontWeight: FontWeight.w500,fontSize: 7.sp),),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Text('Your phone + 987-876-9876 going to suspend in 4 days',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 6.sp),),
                ),
                SizedBox(height: 2.h),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('5:15 PM',style: TextStyle(color: notificationTextColor,fontWeight: FontWeight.w500,fontSize: 6.sp),)),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Text('Your phone + 987-876-9876 going to suspend in 4 days',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 6.sp),),
                ),
                SizedBox(height: 2.h),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('2:30 PM',style: TextStyle(color: notificationTextColor,fontWeight: FontWeight.w500,fontSize: 6.sp),)),
                Text('Dec 20 2022',style: TextStyle(color: notificationTextColor,fontWeight: FontWeight.w500,fontSize: 7.sp),),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Text('Your phone + 987-876-9876 going to suspend in 4 days',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 6.sp),),
                ),
                SizedBox(height: 2.h),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('5:15 PM',style: TextStyle(color: notificationTextColor,fontWeight: FontWeight.w500,fontSize: 6.sp),)),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Text('Your phone + 987-876-9876 going to suspend in 4 days',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 6.sp),),
                ),
                SizedBox(height: 2.h),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('2:30 PM',style: TextStyle(color: notificationTextColor,fontWeight: FontWeight.w500,fontSize: 6.sp),)),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
