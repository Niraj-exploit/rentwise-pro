// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocks_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(blockRepository)
final blockRepositoryProvider = BlockRepositoryProvider._();

final class BlockRepositoryProvider
    extends
        $FunctionalProvider<BlockRepository, BlockRepository, BlockRepository>
    with $Provider<BlockRepository> {
  BlockRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'blockRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$blockRepositoryHash();

  @$internal
  @override
  $ProviderElement<BlockRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BlockRepository create(Ref ref) {
    return blockRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BlockRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BlockRepository>(value),
    );
  }
}

String _$blockRepositoryHash() => r'cc53c8cb1a8af2c4730e9b1ff5fec809f980d476';

@ProviderFor(BlocksController)
final blocksControllerProvider = BlocksControllerProvider._();

final class BlocksControllerProvider
    extends $AsyncNotifierProvider<BlocksController, List<Block>> {
  BlocksControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'blocksControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$blocksControllerHash();

  @$internal
  @override
  BlocksController create() => BlocksController();
}

String _$blocksControllerHash() => r'74e66ab9773b99d1565401fefd93fed96f2b3027';

abstract class _$BlocksController extends $AsyncNotifier<List<Block>> {
  FutureOr<List<Block>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Block>>, List<Block>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Block>>, List<Block>>,
              AsyncValue<List<Block>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
