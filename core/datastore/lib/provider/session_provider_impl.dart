import 'package:datastore/provider/session_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderImpl extends SessionProvider {
  @override
  String getAccessToken() {
    return "access token from user session API";
  }

  @override
  String getClientId() {
    return "111111111";
  }

  @override
  String getRefreshToken() {
    return "refresh token from user session API";
  }

  @override
  String getUserId() {
    return "123456789";
  }
}

@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderImpl extends SessionProvider {
  @override
  String getAccessToken() {
    return "access token from user session API";
  }

  @override
  String getClientId() {
    return "222222222";
  }

  @override
  String getRefreshToken() {
    return "refresh token from user session API";
  }

  @override
  String getUserId() {
    return "123456789";
  }
}
