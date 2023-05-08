import 'package:agriculture_app/core/utils/core_bindings.dart';
import 'package:agriculture_app/features/auth/signup_page/bindings/signup_bindings.dart';
import 'package:get/get.dart';

import '../../features/auth/login_page/farmer_login_page/farmer_login_page.dart';
import '../../features/auth/login_page/government_login_page/Government_login_page.dart';
import '../../features/auth/signup_page/details/address_detail_page.dart';
import '../../features/auth/signup_page/details/citizenship_details_page.dart';
import '../../features/auth/signup_page/details/personal_details_page.dart';
import '../../features/auth/signup_page/otp_verification_page.dart';
import '../../features/auth/signup_page/select_crops_page.dart';
import '../../features/auth/signup_page/set_password_page.dart';
import '../../features/auth/signup_page/sign_up_page.dart';
import '../../features/mainpage/drawer/drawer_list_Page/Drawer_sendtoserver_page.dart';
import '../../features/mainpage/drawer/drawer_list_Page/Drawer_setting_page.dart';
import '../../features/mainpage/drawer/drawer_list_Page/drawer_localdata_page.dart';
import '../../features/mainpage/home_page/Government_home_page/government_homePage.dart';
import '../../features/mainpage/home_page/farmer_home_page/farmer_homepage.dart';
import '../../features/mainpage/welcome_page/welcome_page.dart';

class AppRoutes{
  static String welcomePage = "/welcome";
  static String farmerLoginPage = "/farmerLogin";
  static String governmentLoginPage = "/governmentLogin";
  static String farmerSignPage = "/farmerSignLogin";
  static String farmerHomePage = "/farmerHomeLogin";
  static String governmentHomePage = "/governmentHomePage";
  static String otpVerificationPage = "/otpVerificationPage";
  static String setPasswordPage = "/setPasswordPage";
  static String addressDetailsPage = "/addressDetailsPage";
  static String personalDetailsPage = "/personalDetailsPage";
  static String selectCropsPage = "/selectCropsPage";
  static String citizenshipDetailsPage = "/citizenshipDetailsPage";
  static String drawerLocalDataPage = "/drawerLocalDataPage";
  static String drawerSendToServerPage = "/drawerSendToServerPage";
  static String drawerSettingPage = "/drawerSettingPage";


  static final routes = [
    GetPage(name: welcomePage, page:()=> const WelcomePage(),binding: CoreBindings()),
    GetPage(name: farmerLoginPage, page:()=> const FarmerLoginPage()),
    GetPage(name: governmentLoginPage, page:()=> const GovernmentLoginPage()),
    GetPage(name: farmerSignPage, page:()=> const SignUpPage(),bindings:[SignUPBindings()] ),
    GetPage(name: farmerHomePage, page:()=> const FarmerHomePage()),
    GetPage(name: governmentHomePage, page:()=> const GovernmentHomePage()),
    GetPage(name: otpVerificationPage, page:()=> const OtpVerificationPage()),
    GetPage(name: setPasswordPage, page:()=> const SetPasswordPage()),
    GetPage(name: addressDetailsPage, page:()=> const AddressDetailsPage()),
    GetPage(name: personalDetailsPage, page:()=> const PersonalDetailsPage()),
    GetPage(name: selectCropsPage, page:()=> const SelectCropsPage()),
    GetPage(name: citizenshipDetailsPage, page:()=> const CitizenshipDetailsPage()),
    GetPage(name: drawerLocalDataPage, page:()=> const DrawerLocalDataPage()),
    GetPage(name: drawerSendToServerPage, page:()=> const DrawerSendtoServerPage()),
    GetPage(name: drawerSettingPage, page:()=> const DrawerSettingPage())


  ];



}