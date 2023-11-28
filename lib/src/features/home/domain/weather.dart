// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class WeatherLocation with _$WeatherLocation {
  factory WeatherLocation(
      {required String name,
      required String region,
      required String country,
      required String localtime}) = _WeatherLocation;

  factory WeatherLocation.fromJson(Map<String, dynamic> json) =>
      _$WeatherLocationFromJson(json);
}

@freezed
class WeatherCondition with _$WeatherCondition {
  factory WeatherCondition({
    required String text,
    required String icon,
    required int code,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);
}

@freezed
class WeatherCurrent with _$WeatherCurrent {
  factory WeatherCurrent({
    @JsonKey(name: 'last_updated') required String lastUpdate,
    @JsonKey(name: 'temp_c') required double temp,
    required WeatherCondition condition,
    required double humidity,
    @JsonKey(name: 'feelslike_c') required double feelsLike,
    @JsonKey(name: 'wind_kph') required double wind,
  }) = _WeatherCurrent;

  factory WeatherCurrent.fromJson(Map<String, dynamic> json) =>
      _$WeatherCurrentFromJson(json);
}

@freezed
class Weather with _$Weather {
  factory Weather({
    required WeatherLocation location,
    required WeatherCurrent current,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
