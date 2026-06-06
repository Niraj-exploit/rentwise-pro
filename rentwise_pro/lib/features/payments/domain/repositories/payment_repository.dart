import '../../domain/entities/payment.dart';

abstract class PaymentRepository {
  Future<void> recordPayment(Payment payment);
  Future<List<Payment>> getPaymentsByBill(String billId);
  Future<List<Payment>> getRecentPayments();
}
