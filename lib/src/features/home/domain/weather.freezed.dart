// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherLocation _$WeatherLocationFromJson(Map<String, dynamic> json) {
  return _WeatherLocation.fromJson(json);
}

/// @nodoc
mixin _$WeatherLocation {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get localtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherLocationCopyWith<WeatherLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherLocationCopyWith<$Res> {
  factory $WeatherLocationCopyWith(
          WeatherLocation value, $Res Function(WeatherLocation) then) =
      _$WeatherLocationCopyWithImpl<$Res, WeatherLocation>;
  @useResult
  $Res call({String name, String region, String country, String localtime});
}

/// @nodoc
class _$WeatherLocationCopyWithImpl<$Res, $Val extends WeatherLocation>
    implements $WeatherLocationCopyWith<$Res> {
  _$WeatherLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? localtime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherLocationImplCopyWith<$Res>
    implements $WeatherLocationCopyWith<$Res> {
  factory _$$WeatherLocationImplCopyWith(_$WeatherLocationImpl value,
          $Res Function(_$WeatherLocationImpl) then) =
      __$$WeatherLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String region, String country, String localtime});
}

/// @nodoc
class __$$WeatherLocationImplCopyWithImpl<$Res>
    extends _$WeatherLocationCopyWithImpl<$Res, _$WeatherLocationImpl>
    implements _$$WeatherLocationImplCopyWith<$Res> {
  __$$WeatherLocationImplCopyWithImpl(
      _$WeatherLocationImpl _value, $Res Function(_$WeatherLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? localtime = null,
  }) {
    return _then(_$WeatherLocationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherLocationImpl implements _WeatherLocation {
  _$WeatherLocationImpl(
      {required this.name,
      required this.region,
      required this.country,
      required this.localtime});

  factory _$WeatherLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherLocationImplFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String country;
  @override
  final String localtime;

  @override
  String toString() {
    return 'WeatherLocation(name: $name, region: $region, country: $country, localtime: $localtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, region, country, localtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLocationImplCopyWith<_$WeatherLocationImpl> get copyWith =>
      __$$WeatherLocationImplCopyWithImpl<_$WeatherLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherLocationImplToJson(
      this,
    );
  }
}

abstract class _WeatherLocation implements WeatherLocation {
  factory _WeatherLocation(
      {required final String name,
      required final String region,
      required final String country,
      required final String localtime}) = _$WeatherLocationImpl;

  factory _WeatherLocation.fromJson(Map<String, dynamic> json) =
      _$WeatherLocationImpl.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get country;
  @override
  String get localtime;
  @override
  @JsonKey(ignore: true)
  _$$WeatherLocationImplCopyWith<_$WeatherLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherCondition _$WeatherConditionFromJson(Map<String, dynamic> json) {
  return _WeatherCondition.fromJson(json);
}

/// @nodoc
mixin _$WeatherCondition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherConditionCopyWith<WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) then) =
      _$WeatherConditionCopyWithImpl<$Res, WeatherCondition>;
  @useResult
  $Res call({String text, String icon, String code});
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res, $Val extends WeatherCondition>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionImplCopyWith<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  factory _$$WeatherConditionImplCopyWith(_$WeatherConditionImpl value,
          $Res Function(_$WeatherConditionImpl) then) =
      __$$WeatherConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, String code});
}

/// @nodoc
class __$$WeatherConditionImplCopyWithImpl<$Res>
    extends _$WeatherConditionCopyWithImpl<$Res, _$WeatherConditionImpl>
    implements _$$WeatherConditionImplCopyWith<$Res> {
  __$$WeatherConditionImplCopyWithImpl(_$WeatherConditionImpl _value,
      $Res Function(_$WeatherConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_$WeatherConditionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherConditionImpl implements _WeatherCondition {
  _$WeatherConditionImpl(
      {required this.text, required this.icon, required this.code});

  factory _$WeatherConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherConditionImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final String code;

  @override
  String toString() {
    return 'WeatherCondition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      __$$WeatherConditionImplCopyWithImpl<_$WeatherConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherConditionImplToJson(
      this,
    );
  }
}

abstract class _WeatherCondition implements WeatherCondition {
  factory _WeatherCondition(
      {required final String text,
      required final String icon,
      required final String code}) = _$WeatherConditionImpl;

  factory _WeatherCondition.fromJson(Map<String, dynamic> json) =
      _$WeatherConditionImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherCurrent _$WeatherCurrentFromJson(Map<String, dynamic> json) {
  return _WeatherCurrent.fromJson(json);
}

/// @nodoc
mixin _$WeatherCurrent {
  @JsonKey(name: 'last_update')
  String get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  String get temp => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;
  String get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  String get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  String get wind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCurrentCopyWith<WeatherCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCurrentCopyWith<$Res> {
  factory $WeatherCurrentCopyWith(
          WeatherCurrent value, $Res Function(WeatherCurrent) then) =
      _$WeatherCurrentCopyWithImpl<$Res, WeatherCurrent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_update') String lastUpdate,
      @JsonKey(name: 'temp_c') String temp,
      WeatherCondition condition,
      String humidity,
      @JsonKey(name: 'feelslike_c') String feelsLike,
      @JsonKey(name: 'wind_kph') String wind});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$WeatherCurrentCopyWithImpl<$Res, $Val extends WeatherCurrent>
    implements $WeatherCurrentCopyWith<$Res> {
  _$WeatherCurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdate = null,
    Object? temp = null,
    Object? condition = null,
    Object? humidity = null,
    Object? feelsLike = null,
    Object? wind = null,
  }) {
    return _then(_value.copyWith(
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as String,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherCurrentImplCopyWith<$Res>
    implements $WeatherCurrentCopyWith<$Res> {
  factory _$$WeatherCurrentImplCopyWith(_$WeatherCurrentImpl value,
          $Res Function(_$WeatherCurrentImpl) then) =
      __$$WeatherCurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'last_update') String lastUpdate,
      @JsonKey(name: 'temp_c') String temp,
      WeatherCondition condition,
      String humidity,
      @JsonKey(name: 'feelslike_c') String feelsLike,
      @JsonKey(name: 'wind_kph') String wind});

  @override
  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$WeatherCurrentImplCopyWithImpl<$Res>
    extends _$WeatherCurrentCopyWithImpl<$Res, _$WeatherCurrentImpl>
    implements _$$WeatherCurrentImplCopyWith<$Res> {
  __$$WeatherCurrentImplCopyWithImpl(
      _$WeatherCurrentImpl _value, $Res Function(_$WeatherCurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdate = null,
    Object? temp = null,
    Object? condition = null,
    Object? humidity = null,
    Object? feelsLike = null,
    Object? wind = null,
  }) {
    return _then(_$WeatherCurrentImpl(
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as String,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherCurrentImpl implements _WeatherCurrent {
  _$WeatherCurrentImpl(
      {@JsonKey(name: 'last_update') required this.lastUpdate,
      @JsonKey(name: 'temp_c') required this.temp,
      required this.condition,
      required this.humidity,
      @JsonKey(name: 'feelslike_c') required this.feelsLike,
      @JsonKey(name: 'wind_kph') required this.wind});

  factory _$WeatherCurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherCurrentImplFromJson(json);

  @override
  @JsonKey(name: 'last_update')
  final String lastUpdate;
  @override
  @JsonKey(name: 'temp_c')
  final String temp;
  @override
  final WeatherCondition condition;
  @override
  final String humidity;
  @override
  @JsonKey(name: 'feelslike_c')
  final String feelsLike;
  @override
  @JsonKey(name: 'wind_kph')
  final String wind;

  @override
  String toString() {
    return 'WeatherCurrent(lastUpdate: $lastUpdate, temp: $temp, condition: $condition, humidity: $humidity, feelsLike: $feelsLike, wind: $wind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherCurrentImpl &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.wind, wind) || other.wind == wind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lastUpdate, temp, condition, humidity, feelsLike, wind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherCurrentImplCopyWith<_$WeatherCurrentImpl> get copyWith =>
      __$$WeatherCurrentImplCopyWithImpl<_$WeatherCurrentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherCurrentImplToJson(
      this,
    );
  }
}

abstract class _WeatherCurrent implements WeatherCurrent {
  factory _WeatherCurrent(
          {@JsonKey(name: 'last_update') required final String lastUpdate,
          @JsonKey(name: 'temp_c') required final String temp,
          required final WeatherCondition condition,
          required final String humidity,
          @JsonKey(name: 'feelslike_c') required final String feelsLike,
          @JsonKey(name: 'wind_kph') required final String wind}) =
      _$WeatherCurrentImpl;

  factory _WeatherCurrent.fromJson(Map<String, dynamic> json) =
      _$WeatherCurrentImpl.fromJson;

  @override
  @JsonKey(name: 'last_update')
  String get lastUpdate;
  @override
  @JsonKey(name: 'temp_c')
  String get temp;
  @override
  WeatherCondition get condition;
  @override
  String get humidity;
  @override
  @JsonKey(name: 'feelslike_c')
  String get feelsLike;
  @override
  @JsonKey(name: 'wind_kph')
  String get wind;
  @override
  @JsonKey(ignore: true)
  _$$WeatherCurrentImplCopyWith<_$WeatherCurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  WeatherLocation get location => throw _privateConstructorUsedError;
  WeatherCurrent get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({WeatherLocation location, WeatherCurrent current});

  $WeatherLocationCopyWith<$Res> get location;
  $WeatherCurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as WeatherLocation,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as WeatherCurrent,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherLocationCopyWith<$Res> get location {
    return $WeatherLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCurrentCopyWith<$Res> get current {
    return $WeatherCurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherLocation location, WeatherCurrent current});

  @override
  $WeatherLocationCopyWith<$Res> get location;
  @override
  $WeatherCurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_$WeatherImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as WeatherLocation,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as WeatherCurrent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  _$WeatherImpl({required this.location, required this.current});

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final WeatherLocation location;
  @override
  final WeatherCurrent current;

  @override
  String toString() {
    return 'Weather(location: $location, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  factory _Weather(
      {required final WeatherLocation location,
      required final WeatherCurrent current}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  WeatherLocation get location;
  @override
  WeatherCurrent get current;
  @override
  @JsonKey(ignore: true)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
