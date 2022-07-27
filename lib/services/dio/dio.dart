import 'package:dio/dio.dart';

import 'end_points.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: base_url,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    return await dio!.post(
      url,
      data: query,
      options: Options(
        headers: {'authentication': 'bearer $token'},
      ),
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    return await dio!.put(
      url,
      data: query,
      options: Options(
        headers: {'authentication': 'bearer $token'},
      ),
    );
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    return await dio!.delete(
      url,
      data: query,
      options: Options(
        headers: {'authentication': 'bearer $token'},
      ),
    );
  }
}
