
import 'package:the_movie_db/dependencies/api/api_client/api_client.dart';
import 'package:the_movie_db/dependencies/api/credential_storage/credential_storage.dart';
import 'package:the_movie_db/dependencies/api/models/create_request_token_response.dart';
import 'package:the_movie_db/dependencies/authentication_repository/authentication_repository.dart';
import 'package:the_movie_db/di/di.dart';

class _Path {
  static const validateWithLogin = '/authentication/token/validate_with_login';
  static const createToken = '/3/authentication/token/new';
}

class DefaultAuthenticationRepository implements AuthenticationRepository {
  final APIClient _apiClient = getIt<APIClient>();
  final CredentialStorageOutput _credentialStorageOutput =
      getIt<CredentialStorageOutput>();

  @override
  Future<CreateRequestTokenResponse> createRequestToken() {
    final parameters = {'api_key': _credentialStorageOutput.apiKey()};

    return _apiClient.get(
        path: _Path.createToken,
        queryParameters: parameters,
        headers: {}).then((value) {
      return Future.value(CreateRequestTokenResponse.fromJson(value));
    });
  }
}
