
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_db/dependencies/api/api_client/api_client.dart';
import 'package:the_movie_db/dependencies/api/api_client/default_api_client.dart';
import 'package:the_movie_db/dependencies/api/credential_storage/credential_storage.dart';
import 'package:the_movie_db/dependencies/api/credential_storage/default_credential_storage.dart';
import 'package:the_movie_db/dependencies/authentication_repository/authentication_repository.dart';
import 'package:the_movie_db/dependencies/authentication_repository/default_user_repository.dart';

GetIt $initGetIt(
    GetIt get, {
      String? environment,
      EnvironmentFilter? environmentFilter,
    }) {
  final gh = GetItHelper(get, environment, environmentFilter);

  final credentailStorage = DefaultCredentialStorage();
  gh.singleton<CredentialStorageInput>(credentailStorage);
  gh.singleton<CredentialStorageOutput>(credentailStorage);
  gh.singleton<APIClient>(DefaultAPIClient());
  gh.singleton<AuthenticationRepository>(DefaultAuthenticationRepository());

  return get;
}