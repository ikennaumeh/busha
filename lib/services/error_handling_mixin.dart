import 'dart:io';

import 'package:busha_test/app/app.logger.dart';
import 'package:dio/dio.dart';

import '../exceptions/busha_exception.dart';

mixin ErrorHandling {
  final _logger = getLogger("ErrorHandling");

  void handleError(DioException e) {
    if (e.type == DioExceptionType.unknown && e.error is SocketException) {
      _logger.e(
        'This seems to be a network issue. Please check your network and try again.',
      );
      throw BushaException(
        message: 'No Internet Connection',
      );
    }

    if (e.type == DioExceptionType.connectionTimeout) {
      _logger.e(
        'This seems to be a network issue. Please check your network and try again.',
      );
      throw BushaException(
        message: 'Request took too long to deliver',
      );
    }

    if (e.type == DioExceptionType.connectionError) {
      _logger.e(
        'This seems to be a network issue. Please check your network and try again.',
      );
      throw BushaException(
        message:
            'Opps, we lost connection there. Please check your network and try again.',
      );
    }

    _logger.e(
      'A response error occurred. ${e.response?.statusCode}\nERROR: ${e.message}',
    );
    throw BushaException(
      message: 'Unknown Error Has Ocurred!',
    );
  }
}
