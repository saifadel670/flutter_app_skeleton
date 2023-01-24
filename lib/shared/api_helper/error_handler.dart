import 'package:flutter/widgets.dart';
import '../../resources/app_toast.dart';
import 'app_exceptions.dart';

class ErrorHandler {
  static final key = GlobalKey<NavigatorState>();

  static void handleError(exception) async {
    if (exception is DataParsingException) {
      showErrorMgs(exception.message!);
    } else if (exception is ApiNotRespondingException) {
      showErrorMgs(exception.message!);
    } else if (exception is UnauthorizedException) {
      //If access token has un authorised then logout
      showErrorMgs(exception.message!);
    } else if (exception is InvalidCredentialsException) {
      showErrorMgs(exception.message!);
    } else if (exception is BadRequestException) {
      showErrorMgs(exception.message!);
    } else if (exception is ExpectationException) {
      showErrorMgs(exception.message!);
    } else if (exception is SocketException) {
      showErrorMgs(exception.message!);
    }
  }
}
