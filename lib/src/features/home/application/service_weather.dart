import 'package:weather_app_flutter/src/features/home/data/repository_home.dart';
import 'package:weather_app_flutter/src/features/home/domain/weather.dart';
import 'package:weather_app_flutter/utils/helper_location.dart';

class ServiceWeather {
  ServiceWeather({required this.helperLocation, required this.repositoryHome});
  final HelperLocation helperLocation;
  final RepositoryHome repositoryHome;

  Future<Weather> getCurrentWeather() async {
    final locationInfo = await helperLocation.getCurrentLocation();

    return await repositoryHome.getCurrentWeather(
        locationInfo.latitude.toString(), locationInfo.longitude.toString());
  }
}
