import 'package:interview_task/core/error/exceptions.dart';

const HTTP_SUCCESS = 200;

class ApiClient {
  Map<String, String> getRequestHeader({
    String? token,
    String? apiVersion,
    String? appCheckToken,
  }) {
    return {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
      if (apiVersion != null) 'api-version': apiVersion,
      if (appCheckToken != null) 'X-Firebase-AppCheck': appCheckToken,
    };
  }

  void checkResponseError(int statusCode) {
    switch (statusCode) {
      case 404:
        throw NotFoundException();
      case 400:
        throw BadRequestException();
      case 401:
        throw UnauthorizedException();
      case 410:
        throw ObsoleteVersionException();
      case 500:
        throw ServerErrorException();
      default:
        throw GenericAPIException();
    }
  }
}
