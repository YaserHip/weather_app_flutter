import 'package:dio/dio.dart';
import 'package:location/location.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_providers.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final options = BaseOptions(
    baseUrl: 'http://api.weatherapi.com/v1',
  );
  return Dio(options);
}

@Riverpod(keepAlive: true)
Location location(LocationRef ref) {
  return Location();
}
