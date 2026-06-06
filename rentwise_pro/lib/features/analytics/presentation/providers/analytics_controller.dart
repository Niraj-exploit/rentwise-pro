import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories/analytics_repository.dart';

part 'analytics_controller.g.dart';

@riverpod
class AnalyticsController extends _$AnalyticsController {
  @override
  FutureOr<Map<String, double>> build() async {
    return ref.read(analyticsRepositoryProvider).getMonthlyCollectionData();
  }
}
