// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tenant _$TenantFromJson(Map<String, dynamic> json) => _Tenant(
  id: json['id'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String?,
  unitId: json['unitId'] as String,
  joinedDate: DateTime.parse(json['joinedDate'] as String),
  status: $enumDecode(_$TenantStatusEnumMap, json['status']),
  balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$TenantToJson(_Tenant instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
  'email': instance.email,
  'unitId': instance.unitId,
  'joinedDate': instance.joinedDate.toIso8601String(),
  'status': _$TenantStatusEnumMap[instance.status]!,
  'balance': instance.balance,
};

const _$TenantStatusEnumMap = {
  TenantStatus.active: 'active',
  TenantStatus.left: 'left',
  TenantStatus.blacklisted: 'blacklisted',
};
