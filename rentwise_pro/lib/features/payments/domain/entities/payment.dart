import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    required String id,
    required String billId,
    required String tenantId,
    required double amount,
    required DateTime date,
    required String paymentMethod, // Cash, E-Sewa, Khalti, Bank Transfer
    String? remarks,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}
