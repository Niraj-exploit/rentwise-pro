// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AnalyticsController)
final analyticsControllerProvider = AnalyticsControllerProvider._();

final class AnalyticsControllerProvider
    extends $AsyncNotifierProvider<AnalyticsController, Map<String, double>> {
  AnalyticsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyticsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyticsControllerHash();

  @$internal
  @override
  AnalyticsController create() => AnalyticsController();
}

String _$analyticsControllerHash() =>
    r'15fe7832371516949403bf08af74ac03ae3e783e';

abstract class _$AnalyticsController
    extends $AsyncNotifier<Map<String, double>> {
  FutureOr<Map<String, double>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<Map<String, double>>, Map<String, double>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Map<String, double>>, Map<String, double>>,
              AsyncValue<Map<String, double>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
