import 'dart:convert';

abstract class APIClient {
  Future<Map<String, dynamic>> get({required String path,
    required Map<String, dynamic> queryParameters,
    required Map<String, String> headers});

  Future<Map<String, dynamic>> post(
      {required String path,
        required Map<String, String> headers,
        required Map<String, dynamic> body,
        required Encoding encoding});
}
