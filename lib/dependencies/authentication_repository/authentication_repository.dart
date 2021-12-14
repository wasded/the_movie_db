import 'package:the_movie_db/dependencies/API/models/validate_with_login_response.dart';
import 'package:the_movie_db/dependencies/api/models/create_request_token_response.dart';

abstract class AuthenticationRepository {
  Future<CreateRequestTokenResponse> createRequestToken();
}