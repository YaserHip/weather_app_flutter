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
    required String code,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);
}

@freezed
class WeatherCurrent with _$WeatherCurrent {
  factory WeatherCurrent({
    @JsonKey(name: 'last_update') required String lastUpdate,
    @JsonKey(name: 'temp_c') required String temp,
    required WeatherCondition condition,
  }) = _WeatherCurrent;

  factory WeatherCurrent.fromJson(Map<String, dynamic> json) =>
      _$WeatherCurrentFromJson(json);
}
