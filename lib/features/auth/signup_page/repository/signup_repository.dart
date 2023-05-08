import 'package:agriculture_app/core/utils/api_constants.dart';
import 'package:agriculture_app/core/utils/api_respose.dart';
import 'package:agriculture_app/core/utils/network_client.dart';
import 'package:agriculture_app/core/utils/network_connection_checker.dart';
import 'package:agriculture_app/core/utils/status_code_handler.dart';
import '../model/farmers_signup_number_model.dart';
import '../model/farmers_signup_otp_model.dart';

abstract class SignUpRepository {
  Future<ApiResponse> farmerSignupNumber(
      SignupNumberRequest farmerSignupNumber);

  Future<ApiResponse> farmerSignupOtp(SignupOtpRequest farmerSignupOtp);

//TODO:create a function like above for signup otp
}

class SignUpRepositoryImpl implements SignUpRepository {
  final NetworkClient networkClient;
  final NetworkConnectionChecker networkConnectionChecker;

  SignUpRepositoryImpl(this.networkConnectionChecker, this.networkClient);

  @override
  Future<ApiResponse> farmerSignupNumber(
      SignupNumberRequest farmerSignupNumber) async {
    if (await networkConnectionChecker.hasConnection()) {
      final result = await networkClient.post(
          ApiConstants.farmerSignUpNumber, false, farmerSignupNumber.toJson());

      final response = ApiResponseFactory.handleResponse(result);
      // if(response.hasData){
      //implement logic if required
      // return response;
      // }
      return response;
    } else {
      return ApiResponse(error: "No Internet Connection");
    }
  }

  @override
  Future<ApiResponse> farmerSignupOtp(SignupOtpRequest farmerSignupOtp) async {
    if (await networkConnectionChecker.hasConnection()) {
      final result = await networkClient.post(
          ApiConstants.farmerSignUpOtp, false, farmerSignupOtp.toJson());

      final response = ApiResponseFactory.handleResponse(result);
      // if(response.hasData){
      //implement logic if required
      // return response;
      // }
      return response;
    } else {
      return ApiResponse(error: "No Internet Connection");
    }
  }

//TODO: create a override function for signup otp
}
