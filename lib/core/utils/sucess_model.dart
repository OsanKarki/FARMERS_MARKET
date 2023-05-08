class SuccessResponse {
  String message;

  SuccessResponse({required this.message});

  SuccessResponse.fromJson(Map<String, dynamic> json)
      : message = json['message'] ?? '';

  Map<String, dynamic> toJson() => {
    'message': message,
  };
}
