import 'package:location/location.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_flutter/app_providers.dart';

part 'helper_location.g.dart';

class HelperLocation {
  HelperLocation({required this.location});
  final Location location;

  Future<void> askPermissions() async {
    await location.requestPermission();
    await location.requestService();
  }

  Future<bool> hasPermission() async {
    final permission = await location.hasPermission();
    print('permissionType: $permission');
    switch (permission) {
      case PermissionStatus.granted:
        print('returned true');
        return true;
      case PermissionStatus.grantedLimited:
        print('returned true');
        return true;
      default:
        print('returned false');
        return false;
    }
  }

  Future<LocationData> getCurrentLocation() async {
    return await location.getLocation();
  }
}

@riverpod
HelperLocation helperLocation(HelperLocationRef ref) {
  return HelperLocation(location: ref.watch(locationProvider));
}
