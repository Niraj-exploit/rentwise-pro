import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/block.dart';
import '../../domain/repositories/block_repository.dart';
import '../../data/repositories/block_repository_impl.dart';

import 'package:rentwise_pro/core/network/api_client.dart';
import 'package:rentwise_pro/core/storage/database_service.dart';

part 'blocks_controller.g.dart';

@riverpod
BlockRepository blockRepository(Ref ref) {
  final dbService = ref.read(databaseServiceProvider);
  final apiClient = ref.read(apiClientProvider);
  return BlockRepositoryImpl(dbService, apiClient);
}

@riverpod
class BlocksController extends _$BlocksController {
  @override
  FutureOr<List<Block>> build() async {
    final repo = ref.read(blockRepositoryProvider);
    return repo.getBlocks();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(blockRepositoryProvider).getBlocks(),
    );
  }
}
