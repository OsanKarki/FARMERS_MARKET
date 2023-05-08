class SignupNumberRequest {
  String phoneNumber;

  SignupNumberRequest({ required this.phoneNumber});

  Map<String, dynamic> toJson() => {
    "phone_number":phoneNumber,
  };
}

