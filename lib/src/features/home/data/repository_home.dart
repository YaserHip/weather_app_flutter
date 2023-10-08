import 'package:dio/dio.dart';

class RepositoryHome {
  RepositoryHome({required this.client, required this.apiKey});

  final Dio client;
  final String apiKey;

  Future<String> getCurrentWeather(String lat, String lon) {
    try {
      final response = 
    } catch (e) {
      
    }
  }

  Future<T> _getData<T>({
    required Uri uri,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final response = await client.get(uri);
      switch (response.statusCode) {
        case 200:
          final data = json.decode(response.body);
          return builder(data);
        case 401:
          throw InvalidApiKeyException();
        case 404:
          throw CityNotFoundException();
        default:
          throw UnknownException();
      }
    } on SocketException catch (_) {
      throw NoInternetConnectionException();
    }
  }

}
