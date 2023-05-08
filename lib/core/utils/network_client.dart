import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkClient {
  static String scheme = "https";
  final String host = "farmcenter-jgzs4.ondigitalocean.app";
  final String baseUrl = "/v1";
  var headerValue = {
    "Content-Type": "application/json",
  };

  Future<http.Response> get(String path, bool token) async{
    if (token) {
      //TODO: fetch token from local constants
      headerValue = {
        "Content-Type": "application/json",
      };
    }

    return http.get(
      Uri(host: host, scheme: scheme, path: baseUrl + path),
      headers: headerValue,
    );
  }

  Future<http.Response> post(String path, bool token, dynamic body) async{
    if (token) {
      //TODO: fetch token from local constants
      headerValue = {
        "Content-Type": "application/json",
      };
    }
    return http.post(Uri(host: host, scheme: scheme, path: baseUrl + path),
        headers: headerValue, body: jsonEncode(body));
  }
}
