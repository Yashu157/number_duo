import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:number_duo/app/modules/my_contact_list_module/my_contact_list_controller.dart';
import 'package:number_duo/app/theme/app_colors.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../ContactPage.dart';


class MyContactListPage extends GetView<MyContactListController> {
  MyContactListController myContactListController = Get.put<MyContactListController>(MyContactListController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: myContactListController,
      builder:(controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text('My Contact',style: TextStyle(color: Colors.black,fontSize: 8.sp
          ),),
              actions: [
               IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/download_icon_img.svg'),)
            ],
          ),
          body: Container(
           child: Column(
             children: [
               SizedBox(height: 5.h,),
               Padding(
                 padding: EdgeInsets.only(left: 4.w,right: 4.w),
                 child: TextFormField(
textAlign: TextAlign.left,

                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 5.w),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.transparent),
                       borderRadius: BorderRadius.circular(10.h)
                     ),
                     filled: true,
                     fillColor: Color(0xffE7F7F5),
                     hintText: 'Search here',

                         hintStyle: TextStyle(color: Colors.grey),
                         suffixIcon: IconButton(onPressed: (){}, icon:Icon(Icons.search,color: Colors.black,)),

                   ),

                 ),
               ),
               if (myContactListController.permissionDenied)
                 Center(child: Text('Permission denied')),
               if (myContactListController.contacts == null) Center(child: CircularProgressIndicator()),
               Expanded(
                 child: ListView.builder(
                   shrinkWrap: true,
                     itemCount: myContactListController.contacts?.length??0,
                     itemBuilder: (context, i) => ListTile(
                         title: Text(myContactListController.contacts![i].displayName),
                         onTap: () async {
                           final fullContact =
                           await FlutterContacts.getContact(myContactListController.contacts![i].id);
                           await Navigator.of(context).push(
                               MaterialPageRoute(builder: (_) => ContactPage(fullContact!)));
                         })),
               )
               // Align(
               //   alignment: Alignment.bottomRight,
               //     child: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),backgroundColor: buttonColor,))
             ],

           ),

                     ),

        );
    }, );

  }
}
