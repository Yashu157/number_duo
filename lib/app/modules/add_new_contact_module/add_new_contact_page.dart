import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/add_new_contact_module/add_new_contact_controller.dart';
import 'package:number_duo/app/routes/app_pages.dart';


import 'package:sizer_pro/sizer.dart';

import '../../theme/app_colors.dart';


class AddNewContactPage extends GetView<AddNewContactController> {
  AddNewContactController addNewContactController=Get.put<AddNewContactController>(AddNewContactController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: addNewContactController,
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.arrow_back,color: Colors.black,),),
           title: Text('Add New Contact',style: TextStyle(color: Colors.black,fontSize: 8.sp),),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.only(left: 3.w,right: 3.w),
            
           child: GestureDetector(
             child: SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 4.h,),
                   Text('First Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp),),
                   TextField(
                     cursorColor: Colors.black,
                     decoration: InputDecoration(
                       hintStyle: TextStyle(color: hintTextColor),
                       enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey)),
                       focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                       hintText: 'Enter First Name',
                     ),
                   ),
                   SizedBox(height: 2.h,),
                   Text('Last Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 7.sp),),
                   TextField(
                     cursorColor: Colors.black,
                     decoration: InputDecoration(
                       hintStyle: TextStyle(color: hintTextColor),
                       enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey)),
                       focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                       hintText: 'Enter Last Name',
                     ),
                   ),
                   SizedBox(height: 1.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Phone Number',style: TextStyle(fontSize: 6.sp),),
                      IconButton(onPressed: (){}, icon:Icon(Icons.add_circle,color: buttonColor,)),
                    
                      
                    ],

                  ),

                   
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                          hintText: 'Enter Number',
                          hintStyle: TextStyle(color:Colors.grey),
                          prefixIcon:  Row(
                          mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Mobile",style: TextStyle(fontSize: 6.sp),),
                              CountryCodePicker(
                                showFlag: false,
                                onChanged: print,
                                initialSelection: 'IT',
                                favorite: ['+39','FR'],
                                showCountryOnly: false,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                              ),
                            ],
                          ),
                        ),

                      ),
                   SizedBox(height: 2.h,),
                   TextFormField(
                     decoration: InputDecoration(
                       enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey)),
                       focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                       hintText: 'Enter Number',

                       prefixIcon:  Row(
                         mainAxisSize: MainAxisSize.min,
                         children: [
                           Text("Work",style: TextStyle(fontSize: 6.sp),),
                           CountryCodePicker(


                             showFlag: false,
                             onChanged: print,
                             // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                             initialSelection: 'IT',
                             favorite: ['+1','FR'],
                             // optional. Shows only country name and flag
                             showCountryOnly: false,
                             // optional. Shows only country name and flag when popup is closed.
                             showOnlyCountryWhenClosed: false,
                             // optional. aligns the flag and the Text left
                             alignLeft: false,
                           ),
                         ],
                       ),
                     ),

                   ),
                   SizedBox(height: 2.h,),
                   Text('Note',style: TextStyle(fontSize: 7.sp),),

                   SizedBox(
                     height: 20.h,
                     child: TextField(
                       keyboardType: TextInputType.multiline,
                       maxLines: null,

                       cursorColor: Colors.black,
                       decoration: InputDecoration(
                         hintStyle: TextStyle(color: hintTextColor),

                         enabledBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.grey)),
                         focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                         hintText: 'Enter Note',
                       ),
                     ),
                   ),
                   SizedBox(height: 4.h,),
                   Padding(
                     padding: EdgeInsets.only(left: 3.h,right: 3.h),
                     child: ElevatedButton(onPressed: (){
                     Get.toNamed(Routes.MY_CONTACT_LIST);
                     },
                         style: ElevatedButton.styleFrom(fixedSize: Size(5.h, 5.h),
                             backgroundColor: Color(0xff10AA99),
                             minimumSize: Size(double.maxFinite, 7.h),
                             shape:StadiumBorder() ),
                         child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 6.sp,fontWeight: FontWeight.bold),)),
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
