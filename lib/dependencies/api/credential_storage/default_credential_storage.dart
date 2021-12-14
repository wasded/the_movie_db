import 'package:injectable/injectable.dart';
import 'package:the_movie_db/dependencies/api/credential_storage/credential_storage.dart';

@injectable
class DefaultCredentialStorage
    with CredentialStorageOutput, CredentialStorageInput {
  String? _requestToken;
  String? _sessionId;
  final String? _apiKey = 'ee044de647ad25b4f147aa2142bd2693';

  @override
  String? requestToken() {
    return _requestToken;
  }

  @override
  void clearRequestToken() {
    _requestToken = null;
  }

  @override
  String? sessionId() {
    return _sessionId;
  }

  @override
  void clearSessionId() {
    _sessionId = null;
  }

  @override
  void setRequestToken(String token) {
    _requestToken = token;
  }

  @override
  void setSessionId(String sessionId) {
    _sessionId = sessionId;
  }

  @override
  String? apiKey() {
    return _apiKey;
  }

  @override
  void clearAPIKey() { }

  @override
  void setAPIKey(String apiKey) { }
}
