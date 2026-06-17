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

String _$blockRepositoryHash() => r'129bce3ca00903b22c37661ffa4abd410e453a95';

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

String _$blocksControllerHash() => r'5f869b7d78fd230a4a7c926a21a0ad67db179900';

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
