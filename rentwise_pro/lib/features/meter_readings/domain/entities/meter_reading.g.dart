// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meter_reading.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeterReading _$MeterReadingFromJson(Map<String, dynamic> json) =>
    _MeterReading(
      id: json['id'] as String,
      unitId: json['unitId'] as String,
      reading: (json['reading'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$ReadingTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$MeterReadingToJson(_MeterReading instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unitId': instance.unitId,
      'reading': instance.reading,
      'date': instance.date.toIso8601String(),
      'type': _$ReadingTypeEnumMap[instance.type]!,
    };

const _$ReadingTypeEnumMap = {
  ReadingType.electricity: 'electricity',
  ReadingType.water: 'water',
};
