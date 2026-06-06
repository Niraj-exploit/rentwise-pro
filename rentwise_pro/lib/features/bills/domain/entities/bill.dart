import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill.freezed.dart';
part 'bill.g.dart';

@freezed
abstract class Bill with _$Bill {
  const factory Bill({
    required String id,
    required String tenantId,
    required String unitId,
    required String month,
    required int year,
    required double rentAmount,
    required double electricityAmount,
    required double waterAmount,
    required double internetAmount,
    @Default(0.0) double otherCharges,
    @Default(0.0) double previousDues,
    required double totalAmount,
    @Default(0.0) double paidAmount,
    required BillStatus status,
    required DateTime dueDate,
    DateTime? createdAt,
  }) = _Bill;

  factory Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);
}

enum BillStatus { unpaid, partial, paid, overdue }
