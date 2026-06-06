// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Payment _$PaymentFromJson(Map<String, dynamic> json) => _Payment(
  id: json['id'] as String,
  billId: json['billId'] as String,
  tenantId: json['tenantId'] as String,
  amount: (json['amount'] as num).toDouble(),
  date: DateTime.parse(json['date'] as String),
  paymentMethod: json['paymentMethod'] as String,
  remarks: json['remarks'] as String?,
);

Map<String, dynamic> _$PaymentToJson(_Payment instance) => <String, dynamic>{
  'id': instance.id,
  'billId': instance.billId,
  'tenantId': instance.tenantId,
  'amount': instance.amount,
  'date': instance.date.toIso8601String(),
  'paymentMethod': instance.paymentMethod,
  'remarks': instance.remarks,
};
