import 'package:dio/dio.dart';

class DioHelper {
  static final dio = Dio();

  static configureDio() {
    // Set default configs
    dio.options.baseUrl = 'https://ofrlk.com/';
    dio.options.connectTimeout = const Duration(seconds: 20);
    dio.options.receiveTimeout = const Duration(seconds: 20);
    dio.options.receiveDataWhenStatusError = true;
  }

  static Future<Response> getCountriesData(
      {required String url}) async {
    return await dio.get(url);
  }
  static Future<Response> getSliderImages(
      {required String url}) async {
    return await dio.get(url);
  }
}
