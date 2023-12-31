// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherLocationImpl _$$WeatherLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherLocationImpl(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
      localtime: json['localtime'] as String,
    );

Map<String, dynamic> _$$WeatherLocationImplToJson(
        _$WeatherLocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'localtime': instance.localtime,
    };

_$WeatherConditionImpl _$$WeatherConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherConditionImpl(
      text: json['text'] as String,
      icon: json['icon'] as String,
      code: json['code'] as int,
    );

Map<String, dynamic> _$$WeatherConditionImplToJson(
        _$WeatherConditionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };

_$WeatherCurrentImpl _$$WeatherCurrentImplFromJson(Map<String, dynamic> json) =>
    _$WeatherCurrentImpl(
      lastUpdate: json['last_updated'] as String,
      temp: (json['temp_c'] as num).toDouble(),
      condition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
      humidity: (json['humidity'] as num).toDouble(),
      feelsLike: (json['feelslike_c'] as num).toDouble(),
      wind: (json['wind_kph'] as num).toDouble(),
    );

Map<String, dynamic> _$$WeatherCurrentImplToJson(
        _$WeatherCurrentImpl instance) =>
    <String, dynamic>{
      'last_updated': instance.lastUpdate,
      'temp_c': instance.temp,
      'condition': instance.condition,
      'humidity': instance.humidity,
      'feelslike_c': instance.feelsLike,
      'wind_kph': instance.wind,
    };

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      location:
          WeatherLocation.fromJson(json['location'] as Map<String, dynamic>),
      current: WeatherCurrent.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };
