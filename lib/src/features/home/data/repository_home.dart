import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_flutter/app_providers.dart';
import 'package:weather_app_flutter/src/api/apikey.dart';
import 'package:weather_app_flutter/src/features/home/data/api_exceptions.dart';
import 'package:weather_app_flutter/src/features/home/domain/weather.dart';
import 'package:weather_app_flutter/utils/helper_location.dart';

part 'repository_home.g.dart';

class RepositoryHome {
  RepositoryHome(
      {required this.client,
      required this.apiKey,
      required this.helperLocation});

  final Dio client;
  final String apiKey;
  final HelperLocation helperLocation;

  Future<Weather> getCurrentWeather() async {
    try {
      print('LOCATION: awdasdasd');
      final location = await helperLocation.getCurrentLocation();

      print('LOCATION: ${location.latitude}, ${location.longitude}');

      final response = await client.request('/current.json',
          queryParameters: {
            'key': apiKey,
            'q': '${location.latitude},${location.longitude}',
            'aqi': 'no'
          },
          options: Options(method: 'GET'));

      print('error code: ${response.statusCode}');

      switch (response.statusCode) {
        case 200:
          print('asdasd');
          return Weather.fromJson(response.data);
        case 401:
          print('asdasd1');
          throw InvalidApiKeyException();
        default:
          print('asdasd2');
          throw UnknownException();
      }
    } on SocketException catch (_) {
      print('asdasd3');
      throw NoInternetConnectionException();
    }
  }
}

@riverpod
RepositoryHome repositoryHome(RepositoryHomeRef ref) => RepositoryHome(
    client: ref.watch(dioProvider),
    apiKey: APIKey.weatherAPIKey,
    helperLocation: ref.watch(helperLocationProvider));

@riverpod
Future<Weather> currentWeather(CurrentWeatherRef ref) async {
  return ref.watch(repositoryHomeProvider).getCurrentWeather();
}
