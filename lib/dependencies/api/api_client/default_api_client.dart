import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:the_movie_db/dependencies/api/api_client/api_client.dart';

@singleton
class DefaultAPIClient implements APIClient {
  final String _baseURL = 'api.themoviedb.org';

  @override
  Future<Map<String, dynamic>> get(
      {required String path,
        required Map<String, dynamic> queryParameters,
        required Map<String, String> headers}) async {
    final url = Uri.http(_baseURL, path, queryParameters);

    return http.get(url, headers: headers).then((response) {
      return _handleResponse(response);
    });
  }

  @override
  Future<Map<String, dynamic>> post(
      {required String path,
      required Map<String, String> headers,
      required Map<String, dynamic> body,
      required Encoding encoding}) {
    final url = Uri(host: _baseURL, path: path.toString());

    return http
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((response) {
      try {
        return _handleResponse(response);
      } catch (error) {
        return Future.error(error);
      }
    });
  }

  Future<Map<String, dynamic>> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return Future.value(json.decode(response.body));
    } else {
      return Future.error(("Invalid status code ${response.statusCode}"));
    }
  }
}
