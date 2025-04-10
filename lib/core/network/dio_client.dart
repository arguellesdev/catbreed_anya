import 'package:dio/dio.dart';

/// A simple Dio client configured for The Cat API
// Anya needs to reforce this part

class DioClient {
  static const String catApiKey =
      'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr';

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.thecatapi.com/v1/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'x-api-key': catApiKey,
      },
    ),
  );

  Dio get client => _dio;
}
