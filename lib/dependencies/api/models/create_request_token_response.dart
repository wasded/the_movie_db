class CreateRequestTokenResponse {
  bool success;
  String expiresAt;
  String requestToken;

  CreateRequestTokenResponse(
      {required this.success,
      required this.expiresAt,
      required this.requestToken});

  CreateRequestTokenResponse.fromJson(Map<String, dynamic> json)
      : success = json['success'],
        expiresAt = json['expires_at'],
        requestToken = json['request_token'];
}
