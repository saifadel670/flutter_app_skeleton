class AppException implements Exception {
  late String? message;
  late String? prefix;
  late String? url;

  AppException({
    this.message,
  });
}

//invalid params
class BadRequestException extends AppException {
  BadRequestException([String? message])
      : super(message: message);
}

//invalid url
class DataParsingException extends AppException {
  DataParsingException([String? message])
      : super(message: message);
}

class ApiNotRespondingException extends AppException {
  ApiNotRespondingException([String? message])
      : super(message: message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message])
      : super(message: message,);
}

class ExpectationException extends AppException {
  ExpectationException([String? message])
      : super(message: message);
}

class InvalidCredentialsException extends AppException {
  InvalidCredentialsException([String? message])
      : super(message: message);
}

class SocketException extends AppException {
  SocketException([String? message])
      : super(message: message,);
}
