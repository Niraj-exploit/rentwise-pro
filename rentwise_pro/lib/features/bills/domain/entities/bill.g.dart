// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bill _$BillFromJson(Map<String, dynamic> json) => _Bill(
  id: json['id'] as String,
  tenantId: json['tenantId'] as String,
  unitId: json['unitId'] as String,
  month: json['month'] as String,
  year: (json['year'] as num).toInt(),
  rentAmount: (json['rentAmount'] as num).toDouble(),
  electricityAmount: (json['electricityAmount'] as num).toDouble(),
  waterAmount: (json['waterAmount'] as num).toDouble(),
  internetAmount: (json['internetAmount'] as num).toDouble(),
  otherCharges: (json['otherCharges'] as num?)?.toDouble() ?? 0.0,
  previousDues: (json['previousDues'] as num?)?.toDouble() ?? 0.0,
  totalAmount: (json['totalAmount'] as num).toDouble(),
  paidAmount: (json['paidAmount'] as num?)?.toDouble() ?? 0.0,
  status: $enumDecode(_$BillStatusEnumMap, json['status']),
  dueDate: DateTime.parse(json['dueDate'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$BillToJson(_Bill instance) => <String, dynamic>{
  'id': instance.id,
  'tenantId': instance.tenantId,
  'unitId': instance.unitId,
  'month': instance.month,
  'year': instance.year,
  'rentAmount': instance.rentAmount,
  'electricityAmount': instance.electricityAmount,
  'waterAmount': instance.waterAmount,
  'internetAmount': instance.internetAmount,
  'otherCharges': instance.otherCharges,
  'previousDues': instance.previousDues,
  'totalAmount': instance.totalAmount,
  'paidAmount': instance.paidAmount,
  'status': _$BillStatusEnumMap[instance.status]!,
  'dueDate': instance.dueDate.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
};

const _$BillStatusEnumMap = {
  BillStatus.unpaid: 'unpaid',
  BillStatus.partial: 'partial',
  BillStatus.paid: 'paid',
  BillStatus.overdue: 'overdue',
};
