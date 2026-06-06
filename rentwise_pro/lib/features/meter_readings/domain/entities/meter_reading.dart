import 'package:freezed_annotation/freezed_annotation.dart';

part 'meter_reading.freezed.dart';
part 'meter_reading.g.dart';

@freezed
abstract class MeterReading with _$MeterReading {
  const factory MeterReading({
    required String id,
    required String unitId,
    required double reading,
    required DateTime date,
    required ReadingType type, // electricity, water, etc.
  }) = _MeterReading;

  factory MeterReading.fromJson(Map<String, dynamic> json) =>
      _$MeterReadingFromJson(json);
}

enum ReadingType { electricity, water }
