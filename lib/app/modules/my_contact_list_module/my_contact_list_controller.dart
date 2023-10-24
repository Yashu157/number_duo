
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';

class MyContactListController extends GetxController{
  List<Contact>? contacts;
  bool permissionDenied = false;

  @override
  void initState() {
    super.onInit();
    _fetchContacts();
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {

    } else {
       contacts = await FlutterContacts.getContacts();
       print("contacts-->>${contacts}");
    }
  }


}

