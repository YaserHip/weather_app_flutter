// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_home.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHomeHash() => r'8b038210b1d6d1552a4c13882609b0903a7bef5f';

/// See also [repositoryHome].
@ProviderFor(repositoryHome)
final repositoryHomeProvider = AutoDisposeProvider<RepositoryHome>.internal(
  repositoryHome,
  name: r'repositoryHomeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$repositoryHomeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepositoryHomeRef = AutoDisposeProviderRef<RepositoryHome>;
String _$currenWeatherHash() => r'daf8de7d6ca8fcf5efa0a58d5c00eccf8e35ad73';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [currenWeather].
@ProviderFor(currenWeather)
const currenWeatherProvider = CurrenWeatherFamily();

/// See also [currenWeather].
class CurrenWeatherFamily extends Family<AsyncValue<Weather>> {
  /// See also [currenWeather].
  const CurrenWeatherFamily();

  /// See also [currenWeather].
  CurrenWeatherProvider call({
    required String lat,
    required String lon,
  }) {
    return CurrenWeatherProvider(
      lat: lat,
      lon: lon,
    );
  }

  @override
  CurrenWeatherProvider getProviderOverride(
    covariant CurrenWeatherProvider provider,
  ) {
    return call(
      lat: provider.lat,
      lon: provider.lon,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'currenWeatherProvider';
}

/// See also [currenWeather].
class CurrenWeatherProvider extends AutoDisposeFutureProvider<Weather> {
  /// See also [currenWeather].
  CurrenWeatherProvider({
    required String lat,
    required String lon,
  }) : this._internal(
          (ref) => currenWeather(
            ref as CurrenWeatherRef,
            lat: lat,
            lon: lon,
          ),
          from: currenWeatherProvider,
          name: r'currenWeatherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$currenWeatherHash,
          dependencies: CurrenWeatherFamily._dependencies,
          allTransitiveDependencies:
              CurrenWeatherFamily._allTransitiveDependencies,
          lat: lat,
          lon: lon,
        );

  CurrenWeatherProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.lat,
    required this.lon,
  }) : super.internal();

  final String lat;
  final String lon;

  @override
  Override overrideWith(
    FutureOr<Weather> Function(CurrenWeatherRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrenWeatherProvider._internal(
        (ref) => create(ref as CurrenWeatherRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        lat: lat,
        lon: lon,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Weather> createElement() {
    return _CurrenWeatherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrenWeatherProvider &&
        other.lat == lat &&
        other.lon == lon;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lat.hashCode);
    hash = _SystemHash.combine(hash, lon.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CurrenWeatherRef on AutoDisposeFutureProviderRef<Weather> {
  /// The parameter `lat` of this provider.
  String get lat;

  /// The parameter `lon` of this provider.
  String get lon;
}

class _CurrenWeatherProviderElement
    extends AutoDisposeFutureProviderElement<Weather> with CurrenWeatherRef {
  _CurrenWeatherProviderElement(super.provider);

  @override
  String get lat => (origin as CurrenWeatherProvider).lat;
  @override
  String get lon => (origin as CurrenWeatherProvider).lon;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
