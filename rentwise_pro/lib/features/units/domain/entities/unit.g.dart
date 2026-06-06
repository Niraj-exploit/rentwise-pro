// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Unit _$UnitFromJson(Map<String, dynamic> json) => _Unit(
  id: json['id'] as String,
  blockId: json['blockId'] as String,
  unitNumber: json['unitNumber'] as String,
  floor: json['floor'] as String,
  type: $enumDecode(_$UnitTypeEnumMap, json['type']),
  baseRent: (json['baseRent'] as num).toDouble(),
  status: $enumDecode(_$UnitStatusEnumMap, json['status']),
  currentTenantId: json['currentTenantId'] as String?,
  currentDues: (json['currentDues'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$UnitToJson(_Unit instance) => <String, dynamic>{
  'id': instance.id,
  'blockId': instance.blockId,
  'unitNumber': instance.unitNumber,
  'floor': instance.floor,
  'type': _$UnitTypeEnumMap[instance.type]!,
  'baseRent': instance.baseRent,
  'status': _$UnitStatusEnumMap[instance.status]!,
  'currentTenantId': instance.currentTenantId,
  'currentDues': instance.currentDues,
};

const _$UnitTypeEnumMap = {
  UnitType.flat: 'flat',
  UnitType.room: 'room',
  UnitType.shop: 'shop',
  UnitType.office: 'office',
};

const _$UnitStatusEnumMap = {
  UnitStatus.vacant: 'vacant',
  UnitStatus.occupied: 'occupied',
  UnitStatus.maintenance: 'maintenance',
};
