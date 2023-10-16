import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_flutter/app_providers.dart';
import 'package:weather_app_flutter/src/api/apikey.dart';
import 'package:weather_app_flutter/src/features/home/data/api_exceptions.dart';
import 'package:weather_app_flutter/src/features/home/domain/weather.dart';

part 'repository_home.g.dart';

class RepositoryHome {
  RepositoryHome({required this.client, required this.apiKey});

  final Dio client;
  final String apiKey;

  Future<Weather> getCurrentWeather(String lat, String lon) async {
    try {
      final response = await client.request('/current.json',
          data: {'key': apiKey, 'q': '$lat,$lon', 'aqi': 'no'},
          options: Options(method: 'GET'));

      switch (response.statusCode) {
        case 200:
          return Weather.fromJson(response.data);
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

@riverpod
RepositoryHome repositoryHome(RepositoryHomeRef ref) => RepositoryHome(
    client: ref.watch(dioProvider), apiKey: APIKey.weatherAPIKey);

@riverpod
Future<Weather> currenWeather(CurrenWeatherRef ref,
    {required String lat, required String lon}) {
  return ref.watch(repositoryHomeProvider).getCurrentWeather(lat, lon);
}
