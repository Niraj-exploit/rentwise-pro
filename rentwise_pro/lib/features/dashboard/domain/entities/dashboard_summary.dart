import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_summary.freezed.dart';
part 'dashboard_summary.g.dart';

@freezed
abstract class DashboardSummary with _$DashboardSummary {
  const factory DashboardSummary({
    required double totalMonthlyCollection,
    required double totalPendingDues,
    required int occupiedUnits,
    required int vacantUnits,
    required int overdueTenants,
    required List<RecentPayment> recentPayments,
  }) = _DashboardSummary;

  factory DashboardSummary.fromJson(Map<String, dynamic> json) =>
      _$DashboardSummaryFromJson(json);
}

@freezed
abstract class RecentPayment with _$RecentPayment {
  const factory RecentPayment({
    required String id,
    required String tenantName,
    required String unitName,
    required double amount,
    required DateTime date,
    required String status,
  }) = _RecentPayment;

  factory RecentPayment.fromJson(Map<String, dynamic> json) =>
      _$RecentPaymentFromJson(json);
}
