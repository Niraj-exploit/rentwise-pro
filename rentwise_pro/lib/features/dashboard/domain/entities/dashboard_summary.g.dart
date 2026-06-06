// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardSummary _$DashboardSummaryFromJson(Map<String, dynamic> json) =>
    _DashboardSummary(
      totalMonthlyCollection: (json['totalMonthlyCollection'] as num)
          .toDouble(),
      totalPendingDues: (json['totalPendingDues'] as num).toDouble(),
      occupiedUnits: (json['occupiedUnits'] as num).toInt(),
      vacantUnits: (json['vacantUnits'] as num).toInt(),
      overdueTenants: (json['overdueTenants'] as num).toInt(),
      recentPayments: (json['recentPayments'] as List<dynamic>)
          .map((e) => RecentPayment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DashboardSummaryToJson(_DashboardSummary instance) =>
    <String, dynamic>{
      'totalMonthlyCollection': instance.totalMonthlyCollection,
      'totalPendingDues': instance.totalPendingDues,
      'occupiedUnits': instance.occupiedUnits,
      'vacantUnits': instance.vacantUnits,
      'overdueTenants': instance.overdueTenants,
      'recentPayments': instance.recentPayments,
    };

_RecentPayment _$RecentPaymentFromJson(Map<String, dynamic> json) =>
    _RecentPayment(
      id: json['id'] as String,
      tenantName: json['tenantName'] as String,
      unitName: json['unitName'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as String,
    );

Map<String, dynamic> _$RecentPaymentToJson(_RecentPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantName': instance.tenantName,
      'unitName': instance.unitName,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
    };
