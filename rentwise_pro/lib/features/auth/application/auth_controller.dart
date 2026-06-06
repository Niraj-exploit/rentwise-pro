import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rentwise_pro/features/auth/data/auth_repository.dart';

final authControllerProvider = AsyncNotifierProvider<AuthController, void>(() {
  return AuthController();
});

class AuthController extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    // Initial state is data(null) by returning void
  }

  Future<bool> login(String username, String password) async {
    state = const AsyncValue.loading();
    try {
      if (username.isEmpty || password.isEmpty) {
        state = AsyncValue.error(
          'Username and password cannot be empty',
          StackTrace.current,
        );
        return false;
      }
      await ref.read(authRepositoryProvider).login(username, password);
      state = const AsyncValue.data(null);
      return true;
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
      return false;
    }
  }
}
