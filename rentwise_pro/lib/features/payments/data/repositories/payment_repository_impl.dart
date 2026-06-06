import '../../domain/entities/payment.dart';
import '../../domain/repositories/payment_repository.dart';
import 'package:rentwise_pro/core/storage/database_service.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final DatabaseService _dbService;

  PaymentRepositoryImpl(this._dbService);

  @override
  Future<void> recordPayment(Payment payment) async {
    final db = await _dbService.database;
    await db.insert('payments', payment.toJson());
  }

  @override
  Future<List<Payment>> getPaymentsByBill(String billId) async {
    final db = await _dbService.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'payments',
      where: 'billId = ?',
      whereArgs: [billId],
    );
    return List.generate(maps.length, (i) => Payment.fromJson(maps[i]));
  }

  @override
  Future<List<Payment>> getRecentPayments() async {
    final db = await _dbService.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'payments',
      orderBy: 'date DESC',
      limit: 10,
    );
    return List.generate(maps.length, (i) => Payment.fromJson(maps[i]));
  }
}
