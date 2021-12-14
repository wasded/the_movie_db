class ValidateWithLoginResponse {
  final bool success;
  final String expiresAt;
  final String requestToken;

  ValidateWithLoginResponse({
    required this.success,
    required this.expiresAt,
    required this.requestToken
  });

  ValidateWithLoginResponse.fromJson(Map<String, dynamic> json)
      : success = json['success'],
        expiresAt = json['expires_at'],
        requestToken = json['request_token'];
}
