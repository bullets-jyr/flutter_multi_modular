import 'package:domain/model/localized_message.dart';

// error model that we expect to receive from API
class Failure {
  int code; // 200,201, 303, 404, 400, 500, 503 ...etc
  LocalizedMessage message;

  Failure(this.code, this.message);
}
