import '../../app/modules/my_contact_list_module/my_contact_list_page.dart';
import '../../app/modules/my_contact_list_module/my_contact_list_bindings.dart';
import '../../app/modules/add_new_contact_module/add_new_contact_page.dart';
import '../../app/modules/add_new_contact_module/add_new_contact_bindings.dart';
import '../../app/modules/my_contact_module/my_contact_page.dart';
import '../../app/modules/my_contact_module/my_contact_bindings.dart';
import '../../app/modules/change_password_module/change_password_page.dart';
import '../../app/modules/change_password_module/change_password_bindings.dart';
import '../../app/modules/privacy_policy_module/privacy_policy_page.dart';
import '../../app/modules/privacy_policy_module/privacy_policy_bindings.dart';
import '../../app/modules/notification_module/notification_page.dart';
import '../../app/modules/notification_module/notification_bindings.dart';
import '../../app/modules/home_screen_module/home_screen_page.dart';
import '../../app/modules/home_screen_module/home_screen_bindings.dart';
import '../../app/modules/purchased_virtual_number_module/purchased_virtual_number_page.dart';
import '../../app/modules/purchased_virtual_number_module/purchased_virtual_number_bindings.dart';
import '../../app/modules/sign_up_module/sign_up_page.dart';
import '../../app/modules/sign_up_module/sign_up_bindings.dart';
import 'package:number_duo/app/modules/phone_subscription_module/phone_subscription_bindings.dart';
import 'package:number_duo/app/modules/phone_subscription_module/phone_subscription_page.dart';

import '../../app/modules/confirm_phone_number_module/confirm_phone_number_page.dart';
import '../../app/modules/confirm_phone_number_module/confirm_phone_number_bindings.dart';
import 'package:number_duo/app/modules/update_password_module/update_password_bindings.dart';
import 'package:number_duo/app/modules/update_password_module/update_password_page.dart';
import '../../app/modules/forget_password_module/forget_password_page.dart';
import '../../app/modules/forget_password_module/forget_password_bindings.dart';
import '../../app/modules/login_page_screen_module/login_page_screen_page.dart';
import '../../app/modules/login_page_screen_module/login_page_screen_bindings.dart';
import '../../app/modules/choose_number_module/choose_number_page.dart';
import '../../app/modules/choose_number_module/choose_number_bindings.dart';
import '../../app/modules/choose_usage_screen_module/choose_usage_screen_page.dart';
import '../../app/modules/choose_usage_screen_module/choose_usage_screen_bindings.dart';
import '../../app/modules/submit_screen_module/submit_screen_page.dart';
import '../../app/modules/submit_screen_module/submit_screen_bindings.dart';
import '../../app/modules/splash_screen_module/splash_screen_page.dart';
import '../../app/modules/splash_screen_module/splash_screen_bindings.dart';
import '../../app/modules/bottom_bar_screen_module/bottom_bar_screen_page.dart';
import '../../app/modules/bottom_bar_screen_module/bottom_bar_screen_bindings.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';



part './app_routes.dart';

abstract class AppPages {
  static final pages = [

    GetPage(
      name: Routes.BOTTOM_BAR_SCREEN,
      page: () => BottomBarScreenPage(),
      binding: BottomBarScreenBinding(),
    ),
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => SplashScreenPage(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Routes.SUBMIT_SCREEN,
      page: () => SubmitScreenPage(),
      binding: SubmitScreenBinding(),
    ),
    GetPage(
      name: Routes.CHOOSE_USAGE_SCREEN,
      page: () => ChooseUsageScreenPage(),
      binding: ChooseUsageScreenBinding(),
    ),
    GetPage(
      name: Routes.CHOOSE_NUMBER,
      page: () => ChooseNumberPage(),
      binding: ChooseNumberBinding(),
    ),
    GetPage(
      name: Routes.LOGIN_PAGE_SCREEN,
      page: () => LoginPageScreenPage(),
      binding: LoginPageScreenBinding(),
    ),

    GetPage(
      name: Routes.FORGET_PASSWORD,
      page: () => ForgetPasswordPage(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: Routes.UPDATE_PASSWORD,
      page: () => UpdatePasswordPage(),
      binding: UpdatePasswordBinding(),
    ),

    GetPage(
      name: Routes.CONFIRM_PHONE_NUMBER,
      page: () => ConfirmPhoneNumberPage(),
      binding: ConfirmPhoneNumberBinding(),
    ),
    GetPage(
      name: Routes.PHONE_SUBSCRIPTION,
      page: () => PhoneSubscriptionPage(),
      binding: PhoneSubscriptionBinding(),
    ),

    GetPage(
      name: Routes.SIGN_UP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.PURCHASED_VIRTUAL_NUMBER,
      page: () => PurchasedVirtualNumberPage(),
      binding: PurchasedVirtualNumberBinding(),
    ),
    GetPage(
      name: Routes.HOME_SCREEN,
      page: () => HomeScreenPage(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATION,
      page: () => NotificationPage(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: Routes.PRIVACY_POLICY,
      page: () => PrivacyPolicyPage(),
      binding: PrivacyPolicyBinding(),
    ),
    GetPage(
      name: Routes.CHANGE_PASSWORD,
      page: () => ChangePasswordPage(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: Routes.MY_CONTACT,
      page: () => MyContactPage(),
      binding: MyContactBinding(),
    ),
    GetPage(
      name: Routes.ADD_NEW_CONTACT,
      page: () => AddNewContactPage(),
      binding: AddNewContactBinding(),
    ),
    GetPage(
      name: Routes.MY_CONTACT_LIST,
      page: () => MyContactListPage(),
      binding: MyContactListBinding(),
    ),
  ];
}
