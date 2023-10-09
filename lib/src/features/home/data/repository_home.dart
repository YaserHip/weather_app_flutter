import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather_app_flutter/src/features/home/data/api_exceptions.dart';

class RepositoryHome {
  RepositoryHome({required this.client, required this.apiKey});

  final Dio client;
  final String apiKey;

  Future<String> getCurrentWeather(String lat, String lon) async {
    try {
      final response = await client.request('/current.json',
          data: {'key': apiKey, 'q': '$lat,$lon', 'aqi': 'no'},
          options: Options(method: 'GET'));

      switch (response.statusCode) {
        case 200:
          final data = response.data.toString();
          return data;
        case 401:
          throw InvalidApiKeyException();
        default:
          throw UnknownException();
      }
    } on SocketException catch (_) {
      throw NoInternetConnectionException();
    }
  }
}
