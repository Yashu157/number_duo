import 'package:country_state_picker/country_state_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/routes/app_pages.dart';
import 'package:sizer_pro/sizer.dart';

import '../../theme/app_colors.dart';
import 'choose_number_controller.dart';


class ChooseNumberPage extends GetView<ChooseNumberController> {
  ChooseNumberController chooseNumberController= Get.put<ChooseNumberController>(ChooseNumberController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: chooseNumberController,
        builder: (controller) {


          var country;
          var state;
          return Scaffold(
            backgroundColor: Colors.white,
appBar: AppBar(backgroundColor: buttonColor,
    elevation: 0,
    leading: BackButton(
onPressed: ()=>Get.back()),

    automaticallyImplyLeading: false,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(28.h), child: Container(
      padding: EdgeInsets.all(3.0.h),

      child: Column(
        children: [
          Text('Choose Number',style: TextStyle(fontSize: 7.sp,color: Colors.white),),


          Padding(
            padding:EdgeInsets.only(top: 4.h),
            child: CountryStatePicker(
              dropdownColor:Colors.white ,
               itemTextStyle: TextStyle(color: Colors.black),
              inputDecoration:InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  hintText: 'United States',
                  hintStyle:TextStyle(color: Colors.white)

              ),
              countryLabel: Text("Country",style: TextStyle(color: Colors.white),),

              stateLabel: Text( "State",style: TextStyle(color: Colors.white)),
              onCountryChanged:controller.onCountryChanged ,
              onStateChanged: controller.onStateChanged,

              countryHintText: "United State",hintTextStyle: TextStyle(color: Colors.white),
              stateHintText: "State",
              noStateFoundText: "Ningún Estado",
            ),
          ),


          if (controller.selectedCountry.value=='US' && controller.selectedState.value=='NY')
            Text("Country = $country",
                style: TextStyle(fontSize: 4.h,color: Colors.white)),

          if (controller.selectedState.value=='NY'&& controller.selectedCountry.value=='US')
            Text("State = $state", style:TextStyle(fontSize: 18,color: Colors.black)),

        ],
      ),
    ),
    ),
    ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 3.h,),
                  Text('Choose From List',style: TextStyle(
                      color:Colors.black,
                      fontSize: 7.sp,
                      fontWeight:FontWeight.bold ),textAlign: TextAlign.center,),
                  SizedBox(height: 5.h,),
                  ListView.builder(
                    itemCount: 200,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                    return  Padding(
                      padding: EdgeInsets.only(left: 3.w,right: 3.w),
                      child: Column(
                        children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('+1 987-876-9876(New York)',style: TextStyle(fontSize: 7.sp),),
                             IconButton(onPressed: (){
                               Get.toNamed(Routes.CONFIRM_PHONE_NUMBER);
                             }, icon: Icon(Icons.arrow_forward_ios,size: 6.sp,))


                            ],
                          ),
                          Divider(
                            color: dividerColor,
                            height: 4.h,

                          ),
                        ],
                      ),
                    );
                  },

                  ),
                ],



              ),
            ),

            
          );
        },);

  }
}
