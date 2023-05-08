class SuccessResponse {
  String? message;

  SuccessResponse({ this.message});

  SuccessResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }
}
