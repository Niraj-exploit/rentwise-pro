import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit.freezed.dart';
part 'unit.g.dart';

@freezed
abstract class Unit with _$Unit {
  const factory Unit({
    required String id,
    required String blockId,
    required String unitNumber,
    required String floor,
    required UnitType type,
    required double baseRent,
    required UnitStatus status,
    String? currentTenantId,
    @Default(0.0) double currentDues,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}

enum UnitType { flat, room, shop, office }

enum UnitStatus { vacant, occupied, maintenance }
