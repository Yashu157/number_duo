import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/home_screen_module/home_screen_controller.dart';
import 'package:sizer_pro/sizer.dart';
import '../../routes/app_pages.dart';
import '../../theme/app_colors.dart';


class HomeScreenPage extends GetView<HomeScreenController> {
  HomeScreenController homeScreenController=Get.put<HomeScreenController>(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    bool lights = false;
    return GetBuilder(
      init: homeScreenController,
        builder: (controller) {
          return Scaffold(
            key: controller.scaffoldKey,
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(onPressed: (){
                controller.openDrawer();
              }, icon: SvgPicture.asset('assets/images/menu_icon_img.svg')
              ),
              actions: [
                IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/notification_icon_img.svg'),)
                 ],
            ),
            drawer: Drawer(
              backgroundColor: Colors.white,
              child:SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: buttonColor,
                      height: 25.h,
                      child: DrawerHeader(
                          child:Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: [

                                SvgPicture.asset('assets/images/drawer_user_img.svg'),
                                SizedBox(width: 3.w,),
                                Text('vjramola@gmail.com',style: TextStyle(fontSize: 7.sp,color: Colors.white),)
                              ],
                            ),
                          )
                      ),

                    ),
                    ListTile(
                      title: Text('Manage Subscription Plan',style: TextStyle(fontSize: 7.sp),),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Number Management',style: TextStyle(fontSize: 7.sp,color: Colors.grey),),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Change Password',style: TextStyle(fontSize: 7.sp),),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Block Contacts',style: TextStyle(fontSize: 7.sp,color: Colors.grey),),
                    ),
                    Divider(),
                    SwitchListTile(value:lights, onChanged: (bool value){},
                      title: Text('Do Not Disturb',style: TextStyle(fontSize: 7.sp),),
                      activeColor: Colors.green,

                    ),
                    Divider(),
                    SwitchListTile(value:lights, onChanged: (bool newValue){},
                      title: Text('Notification',style: TextStyle(fontSize: 7.sp),),
                      activeColor: Colors.green,
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Privacy Policy',style: TextStyle(fontSize: 7.sp),),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Invite Friends',style: TextStyle(fontSize: 7.sp),),
                    ),
                    Divider(),
                    SizedBox(),
                    SizedBox(height: 5.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 17.w,right: 17.w),
                      child: ElevatedButton(onPressed: (){

                      },
                          style: ElevatedButton.styleFrom(fixedSize: Size(5.sp, 5.sp),
                              minimumSize: Size(double.maxFinite, 7.h),
                              backgroundColor: Color(0xff10AA99),
                              shape:StadiumBorder() ),
                          child: Text('Logout',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
                    ),


                  ],
                ),
              ),

            ),
            body: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                children: [
                  SvgPicture.asset("assets/images/homeScreenImage.svg"),
                  SizedBox(height: 4.h,),
                  Text('Unlimited Call Forwarding',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize:10.sp ),),
                  SizedBox(height: 1.h,),
                  Text("It is a long established fact that a reader will be distracted by the readable.",style: TextStyle(fontSize:6.sp),textAlign: TextAlign.center,),
                  SizedBox(height: 2.h,),
                  DotsIndicator(dotsCount: 3,decorator: DotsDecorator(color: dotIndicatorColor,activeColor: buttonColor),),
                  SizedBox(height: 4.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h,right: 3.h),
                    child: ElevatedButton(onPressed: (){
                      Get.toNamed(Routes.PHONE_SUBSCRIPTION);
                    },
                        style: ElevatedButton.styleFrom(fixedSize: Size(5.h, 5.h),
                            backgroundColor: Color(0xff10AA99),
                            minimumSize: Size(double.maxFinite, 7.h),
                            shape:StadiumBorder() ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Get a New Number',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),),
                            Icon(Icons.arrow_forward)
                          ],
                        )),
                  ),
                ],
              ),

            ),
          );
        },);

  }
}
