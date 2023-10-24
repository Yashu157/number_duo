import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/privacy_policy_module/privacy_policy_controller.dart';
import 'package:sizer_pro/sizer.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class PrivacyPolicyPage extends GetView<PrivacyPolicyController> {
  var content="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\nLorem Ipsum is simply dummy text of the printing and typesetting industry.\n It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \nLorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.arrow_back,color: Colors.black,),),
          title: Text('Privacy Policy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
        child:Text(content)
      ),
    );
  }
}
