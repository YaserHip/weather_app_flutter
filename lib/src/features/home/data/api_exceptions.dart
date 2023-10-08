sealed class ApiException implements Exception {
  ApiException(this.message);
  final String message;
}

class InvalidApiKeyException extends ApiException {
  InvalidApiKeyException() : super('Invalid API key.');
}

class NoInternetConnectionException extends ApiException {
  NoInternetConnectionException() : super('No internet connection.');
}

class UnknownException extends ApiException {
  UnknownException() : super('Unkown error.');
}
