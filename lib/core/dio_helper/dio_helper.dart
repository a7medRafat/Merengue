import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  String apiKey = 'ee5d7dab403497d3b7c05364927b0766';

  static void init() {
    dio = Dio(BaseOptions(
        baseUrl: 'https://v3.football.api-sports.io/',
        receiveDataWhenStatusError: true,
        headers: {
          'x-rapidapi-host': 'v3.football.api-sports.io',
          'x-rapidapi-key': 'ee5d7dab403497d3b7c05364927b0766',
        }));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      'x-rapidapi-host': 'v3.football.api-sports.io',
      'x-rapidapi-key': 'ee5d7dab403497d3b7c05364927b0766',
    };
    return await dio!.get(url, queryParameters: query);
  }
}
