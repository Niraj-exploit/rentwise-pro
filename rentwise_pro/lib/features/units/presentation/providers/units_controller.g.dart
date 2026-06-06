// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'units_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(unitRepository)
final unitRepositoryProvider = UnitRepositoryProvider._();

final class UnitRepositoryProvider
    extends $FunctionalProvider<UnitRepository, UnitRepository, UnitRepository>
    with $Provider<UnitRepository> {
  UnitRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'unitRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$unitRepositoryHash();

  @$internal
  @override
  $ProviderElement<UnitRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UnitRepository create(Ref ref) {
    return unitRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UnitRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UnitRepository>(value),
    );
  }
}

String _$unitRepositoryHash() => r'8b71c4e772d5e65477afad81b9e75ab54e89be24';

@ProviderFor(UnitsController)
final unitsControllerProvider = UnitsControllerFamily._();

final class UnitsControllerProvider
    extends $AsyncNotifierProvider<UnitsController, List<Unit>> {
  UnitsControllerProvider._({
    required UnitsControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unitsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unitsControllerHash();

  @override
  String toString() {
    return r'unitsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UnitsController create() => UnitsController();

  @override
  bool operator ==(Object other) {
    return other is UnitsControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unitsControllerHash() => r'fc18834a8eabfc312114835aa16d3f2ac42bf1ea';

final class UnitsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          UnitsController,
          AsyncValue<List<Unit>>,
          List<Unit>,
          FutureOr<List<Unit>>,
          String
        > {
  UnitsControllerFamily._()
    : super(
        retry: null,
        name: r'unitsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UnitsControllerProvider call(String blockId) =>
      UnitsControllerProvider._(argument: blockId, from: this);

  @override
  String toString() => r'unitsControllerProvider';
}

abstract class _$UnitsController extends $AsyncNotifier<List<Unit>> {
  late final _$args = ref.$arg as String;
  String get blockId => _$args;

  FutureOr<List<Unit>> build(String blockId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Unit>>, List<Unit>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Unit>>, List<Unit>>,
              AsyncValue<List<Unit>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
