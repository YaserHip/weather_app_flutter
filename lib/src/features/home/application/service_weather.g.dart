// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_weather.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$serviceWeatherHash() => r'c84eafcbbe40da49c7757cf2f02805545434a6b3';

/// See also [serviceWeather].
@ProviderFor(serviceWeather)
final serviceWeatherProvider = AutoDisposeProvider<ServiceWeather>.internal(
  serviceWeather,
  name: r'serviceWeatherProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$serviceWeatherHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ServiceWeatherRef = AutoDisposeProviderRef<ServiceWeather>;
String _$currentWeatherHash() => r'18c1d9960e41495d74e1aa58423c59d2412648dc';

/// See also [currentWeather].
@ProviderFor(currentWeather)
final currentWeatherProvider = AutoDisposeFutureProvider<Weather>.internal(
  currentWeather,
  name: r'currentWeatherProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentWeatherHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentWeatherRef = AutoDisposeFutureProviderRef<Weather>;
String _$hasPermissionHash() => r'bfbd83943a574c8b0d484fc46bfa90e605dda2ce';

/// See also [hasPermission].
@ProviderFor(hasPermission)
final hasPermissionProvider = AutoDisposeFutureProvider<bool>.internal(
  hasPermission,
  name: r'hasPermissionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$hasPermissionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HasPermissionRef = AutoDisposeFutureProviderRef<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
