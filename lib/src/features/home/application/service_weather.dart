import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_flutter/src/features/home/data/repository_home.dart';
import 'package:weather_app_flutter/src/features/home/domain/weather.dart';
import 'package:weather_app_flutter/utils/helper_location.dart';

part 'service_weather.g.dart';

class ServiceWeather {
  ServiceWeather({required this.helperLocation, required this.repositoryHome});
  final HelperLocation helperLocation;
  final RepositoryHome repositoryHome;

  Future<Weather> getCurrentWeather() async {
    final locationInfo = await helperLocation.getCurrentLocation();

    return await repositoryHome.getCurrentWeather(
        locationInfo.latitude.toString(), locationInfo.longitude.toString());
  }

  Future<bool> hasPermission() async {
    return await helperLocation.hasPermission();
  }
}

@riverpod
ServiceWeather serviceWeather(ServiceWeatherRef ref) {
  return ServiceWeather(
      helperLocation: ref.watch(helperLocationProvider),
      repositoryHome: ref.watch(repositoryHomeProvider));
}

@riverpod
Future<Weather> currentWeather(CurrentWeatherRef ref) {
  return ref.watch(serviceWeatherProvider).getCurrentWeather();
}

@riverpod
Future<bool> hasPermission(HasPermissionRef ref) {
  return ref.watch(serviceWeatherProvider).hasPermission();
}
