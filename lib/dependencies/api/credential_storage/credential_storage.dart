
abstract class CredentialStorageInput {
  void setRequestToken(String token);
  void clearRequestToken();
  void setSessionId(String sessionId);
  void clearSessionId();
  void setAPIKey(String apiKey);
  void clearAPIKey();
}

abstract class CredentialStorageOutput {
  String? requestToken();
  String? sessionId();
  String? apiKey();
}