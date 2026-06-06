import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/unit.dart';
import '../../domain/repositories/unit_repository.dart';
import '../../data/repositories/unit_repository_impl.dart';
import 'package:rentwise_pro/core/network/api_client.dart';
import 'package:rentwise_pro/core/storage/database_service.dart';

part 'units_controller.g.dart';

@riverpod
UnitRepository unitRepository(Ref ref) {
  final dbService = ref.read(databaseServiceProvider);
  final apiClient = ref.read(apiClientProvider);
  return UnitRepositoryImpl(dbService, apiClient);
}

@riverpod
class UnitsController extends _$UnitsController {
  @override
  FutureOr<List<Unit>> build(String blockId) async {
    final repo = ref.read(unitRepositoryProvider);
    return repo.getUnitsByBlock(blockId);
  }

  Future<void> refresh(String blockId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(unitRepositoryProvider).getUnitsByBlock(blockId),
    );
  }
}
