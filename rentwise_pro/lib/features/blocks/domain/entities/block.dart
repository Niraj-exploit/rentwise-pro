import 'package:freezed_annotation/freezed_annotation.dart';

part 'block.freezed.dart';
part 'block.g.dart';

@freezed
abstract class Block with _$Block {
  const factory Block({
    required String id,
    required String name,
    required String address,
    required int totalUnits,
    required int occupiedUnits,
    @Default(0.0) double monthlyRevenue,
  }) = _Block;

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);
}
