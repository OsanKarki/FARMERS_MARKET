class ErrorResponse {
  String? error;

  ErrorResponse({this.error});

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
  }
}
