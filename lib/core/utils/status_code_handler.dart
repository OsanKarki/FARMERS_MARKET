import 'dart:convert';

import 'api_respose.dart';
import 'error_model.dart';

class ApiResponseFactory {
  static handleResponse(dynamic response) {

    final decodedJson = jsonDecode(response.body);
    switch (response.statusCode) {
      case 200:
        return ApiResponse(data: decodedJson);
      case 201:
        return ApiResponse(data: decodedJson);
      case 204:
        return ApiResponse(data: decodedJson);
      case 400:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
      case 401:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
      case 402:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
      case 403:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
      case 404:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
      case 405:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
      case 500:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
      case 502:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
      case 503:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
      default:
        final error = ErrorResponse.fromJson(decodedJson);
        return ApiResponse(error: error.error);
    }
  }
}
