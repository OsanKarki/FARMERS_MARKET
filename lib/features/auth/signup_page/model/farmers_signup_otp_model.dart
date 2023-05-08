
class SignupOtpRequest {
  int otp;
  String phoneNumber;

  SignupOtpRequest({required this.otp, required this.phoneNumber});



   Map<String, dynamic> toJson()=>{
      "otp":otp,
     "phone_number":phoneNumber

    };
  }