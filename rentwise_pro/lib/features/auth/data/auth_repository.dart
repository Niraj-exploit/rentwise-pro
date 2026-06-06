import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rentwise_pro/core/network/api_client.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.watch(apiClientProvider));
});

class AuthRepository {
  final ApiClient _apiClient;

  AuthRepository(this._apiClient);

  Future<void> login(String username, String password) async {
    try {
      // Trying to hit the backend API
      final response = await _apiClient.post(
        '/auth/login',
        data: {'username': username, 'password': password},
      );
      // Assuming success if 2xx
      if (response.statusCode != 200) {
        throw Exception('Failed to login. Status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // If server does not exist or connection fails
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        // Fallback for default admin credentials when backend is down
        if (username.toLowerCase() == 'saroj' && password == 'admin123') {
          return; // Local mock success
        }
        throw Exception(
          'Cannot connect to the server. Backend might not be running.',
        );
      }

      final errorMessage =
          e.response?.data?['message'] ??
          'Login failed. Please check your credentials.';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
