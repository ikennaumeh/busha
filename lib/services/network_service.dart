import 'package:busha_test/app/app.logger.dart';
import 'package:busha_test/enum/http_request.dart';
import 'package:busha_test/services/error_handling_mixin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NetworkService with ErrorHandling {
  final Dio _dio = Dio();
  final _logger = getLogger('NetworkService');

  NetworkService() {
    if (kDebugMode) {
      _dio.interceptors.addAll([
        LogInterceptor(
          responseBody: true,
          requestHeader: true,
          responseHeader: false,
          request: false,
          requestBody: true,
        ),
      ]);
    }
  }

  Future makeHttpRequest({
    required HttpRequest request,
    required String path,
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final response = await _sendRequest(
        request: request,
        path: path,
        queryParameters: queryParameters,
        body: body,
      );

      return response.data;
    } on DioException catch (e) {
      handleError(e);
    } catch (e, s) {
      _logger.wtf('Could not make a request to this path: $path', e, s);

      rethrow;
    }
  }

  Future<Response> _sendRequest({
    required HttpRequest request,
    required String path,
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> body = const {},
  }) async {
    Response response;

    switch (request) {
      case HttpRequest.get:
      default:
        response = await _dio.get(
          path,
          queryParameters: queryParameters,
          data: body,
        );
    }

    return response;
  }
}
