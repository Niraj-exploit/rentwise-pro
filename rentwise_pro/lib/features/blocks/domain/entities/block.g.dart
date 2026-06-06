// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Block _$BlockFromJson(Map<String, dynamic> json) => _Block(
  id: json['id'] as String,
  name: json['name'] as String,
  address: json['address'] as String,
  totalUnits: (json['totalUnits'] as num).toInt(),
  occupiedUnits: (json['occupiedUnits'] as num).toInt(),
  monthlyRevenue: (json['monthlyRevenue'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$BlockToJson(_Block instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'address': instance.address,
  'totalUnits': instance.totalUnits,
  'occupiedUnits': instance.occupiedUnits,
  'monthlyRevenue': instance.monthlyRevenue,
};
