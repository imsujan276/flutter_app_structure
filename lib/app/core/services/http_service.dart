import 'package:car_juggle_photo_app/app/core/resources/flavor_config.dart';
import 'package:car_juggle_photo_app/app/utils/storage/auth_storage.dart';
import 'package:car_juggle_photo_app/app/widgets/modals/no_internet_connection_modal.dart';
import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

import 'internet_connectivity/internet_connectivity.dart';

abstract class HttpService {
  /// HTTP get method
  Future<Response?> get(String url, {Map<String, dynamic> queryParams});

  /// HTTP post method
  Future<Response?> post(String url, {dynamic data});

  /// HTTP patch method
  Future<Response?> patch(String url,
      {dynamic data, Map<String, dynamic> queryParams});

  /// HTTP delete method
  Future<Response?> delete(String url,
      {dynamic data, Map<String, dynamic> queryParams});
}

class HttpServiceImpl implements HttpService {
  final internetController = Get.find<InternetConnectivityController>();

  Dio get dio => _getDio();
  Dio _getDio() {
    BaseOptions options = BaseOptions(
      baseUrl: FlavorConfig.instance.values.baseUrl,
      connectTimeout: 50000,
      receiveTimeout: 30000,
      followRedirects: false,
      validateStatus: (status) {
        return status! <= 500;
      },
      headers: {"Content-Type": "application/json"},
    );
    Dio dio = Dio(options);
    dio.interceptors.addAll(<Interceptor>[_interceptor()]);

    return dio;
  }

  /// intercept the http request
  _interceptor() {
    return InterceptorsWrapper(onRequest: (options, handler) async {
      final String token = AuthStorage.token;
      if (token.isNotEmpty)
        options.headers.addAll({
          "Authorization": token,
        });
      print("${options.method} | ${options.path}");
      return handler.next(options);
    }, onResponse: (response, handler) {
      print("${response.statusCode} ${response.statusMessage}");
      return handler.next(response);
    }, onError: (DioError e, handler) {
      print("============== DIO INTERCEPTOR ERROR ==============");
      print(e.message.toString());
      return handler.next(e);
    });
  }

  @override
  Future<Response?> get(String url, {Map<String, dynamic>? queryParams}) async {
    Response? response;
    if (!internetController.isInternetConnected.value) {
      NoInternetConnectionModal();
      return response;
    }
    try {
      response = await dio.get(url, queryParameters: queryParams);
    } on DioError catch (e) {
      print(e.message.toString());
      return response;
    }
  }

  @override
  Future<Response?> post(String url, {data}) async {
    Response? response;
    if (!internetController.isInternetConnected.value) {
      NoInternetConnectionModal();
      return response;
    }
    try {
      response = await dio.post(url, data: data);
    } on DioError catch (e) {
      print(e.message.toString());
      return response;
    }
  }

  @override
  Future<Response?> patch(String url,
      {data, Map<String, dynamic>? queryParams}) async {
    Response? response;
    if (!internetController.isInternetConnected.value) {
      NoInternetConnectionModal();
      return response;
    }
    try {
      response = await dio.patch(url, data: data, queryParameters: queryParams);
    } on DioError catch (e) {
      print(e.message.toString());
      return response;
    }
  }

  @override
  Future<Response?> delete(String url,
      {data, Map<String, dynamic>? queryParams}) async {
    Response? response;
    if (!internetController.isInternetConnected.value) {
      NoInternetConnectionModal();
      return response;
    }
    try {
      response =
          await dio.delete(url, data: data, queryParameters: queryParams);
    } on DioError catch (e) {
      print(e.message.toString());
      return response;
    }
  }
}
