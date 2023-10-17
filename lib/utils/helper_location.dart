import 'package:location/location.dart';
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
    switch (await location.hasPermission()) {
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

@riverpod
HelperLocation helperLocation(HelperLocationRef ref) {
  return HelperLocation(location: ref.watch(locationProvider));
}
