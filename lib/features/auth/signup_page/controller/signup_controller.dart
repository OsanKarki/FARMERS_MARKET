import 'package:agriculture_app/core/utils/api_respose.dart';
import 'package:agriculture_app/core/utils/routes.dart';
import 'package:agriculture_app/core/utils/sucess_model.dart';
import 'package:agriculture_app/features/auth/signup_page/repository/signup_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/farmers_signup_number_model.dart';
import '../model/farmers_signup_otp_model.dart';

class SignUpController extends GetxController {
  late ApiResponse signupNumberResponse;
  late ApiResponse signupOtpResponse;

  final numberController = TextEditingController();
  final otpController = TextEditingController();
  RxBool isLoading = false.obs;

  signUpNumber(SignupNumberRequest farmerSignupNumber) async {
    isLoading.value = true;
    signupNumberResponse = await Get.find<SignUpRepository>()
        .farmerSignupNumber(farmerSignupNumber);
    if (signupNumberResponse.hasData) {
      final message = signupNumberResponse.data;
      final data = SuccessResponse.fromJson(message);
      isLoading.value = false;
      Get.snackbar('Success', data.message!,
          snackPosition: SnackPosition.BOTTOM);
      Get.toNamed(AppRoutes.otpVerificationPage);
    } else {
      isLoading.value = false;
      final error = signupNumberResponse.error;
      Get.snackbar('Error', error.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  signUpOtp(SignupOtpRequest farmerSignupOtp) async {
    isLoading.value = true;
    signupOtpResponse =
        await Get.find<SignUpRepository>().farmerSignupOtp(farmerSignupOtp);
    if (signupOtpResponse.hasData) {print("@@@@@@@@@@@@@@22");
      final message = signupOtpResponse.data;
      final data = SuccessResponse.fromJson(message);
      isLoading.value = false;
      Get.snackbar('Success', data.message!,
          snackPosition: SnackPosition.BOTTOM);
      Get.toNamed(AppRoutes.setPasswordPage);
    } else {
      isLoading.value = false;
      final error = signupOtpResponse.error;
      Get.snackbar('Error', error.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
// TODO: create a function like above for otp and call otp repository function
}
