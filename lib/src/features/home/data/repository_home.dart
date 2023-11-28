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
      final location = await helperLocation.getCurrentLocation();

      final response = await client.request('/current.json',
          queryParameters: {
            'key': apiKey,
            'q': '${location.latitude},${location.longitude}',
            'aqi': 'no'
          },
          options: Options(method: 'GET'));

      Weather.fromJson(response.data);

      switch (response.statusCode) {
        case 200:
          return Weather.fromJson(response.data);
        case 401:
          throw InvalidApiKeyException();
        default:
          throw UnknownException();
      }
    } catch (e) {
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
