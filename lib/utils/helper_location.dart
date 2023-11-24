import 'package:location/location.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_flutter/app_providers.dart';

part 'helper_location.g.dart';

class HelperLocation {
  HelperLocation({required this.location});
  final Location location;

  Future<bool> askPermissions() async {
    await location.requestPermission();
    await location.requestService();
    return await hasPermission();
  }

  Future<bool> hasPermission() async {
    final permission = await location.hasPermission();
    switch (permission) {
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.grantedLimited:
        return true;
      default:
        return false;
    }
  }

  Future<LocationData> getCurrentLocation() async {
    return await location.getLocation();
  }
}

@Riverpod(keepAlive: true)
HelperLocation helperLocation(HelperLocationRef ref) {
  return HelperLocation(location: ref.watch(locationProvider));
}
