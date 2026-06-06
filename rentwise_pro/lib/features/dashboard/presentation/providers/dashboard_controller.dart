import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/dashboard_summary.dart';
import '../../data/repositories/dashboard_repository_impl.dart';
import '../../domain/repositories/dashboard_repository.dart';

part 'dashboard_controller.g.dart';

@riverpod
DashboardRepository dashboardRepository(Ref ref) {
  return DashboardRepositoryImpl();
}

@riverpod
class DashboardController extends _$DashboardController {
  @override
  FutureOr<DashboardSummary> build() async {
    return _fetchSummary();
  }

  Future<DashboardSummary> _fetchSummary() async {
    return ref.read(dashboardRepositoryProvider).getDashboardSummary();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchSummary());
  }
}
