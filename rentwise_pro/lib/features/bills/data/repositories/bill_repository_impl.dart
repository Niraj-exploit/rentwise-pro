import 'package:sqflite/sqflite.dart';
import '../../domain/entities/bill.dart';
import '../../domain/repositories/bill_repository.dart';
import 'package:rentwise_pro/core/storage/database_service.dart';

class BillRepositoryImpl implements BillRepository {
  final DatabaseService _dbService;

  BillRepositoryImpl(this._dbService);

  @override
  Future<List<Bill>> getBillsByTenant(String tenantId) async {
    final db = await _dbService.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'bills',
      where: 'tenantId = ?',
      whereArgs: [tenantId],
      orderBy: 'year DESC, month DESC',
    );

    return List.generate(maps.length, (i) => Bill.fromJson(maps[i]));
  }

  @override
  Future<List<Bill>> getUnpaidBills() async {
    final db = await _dbService.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'bills',
      where: 'status != ?',
      whereArgs: [BillStatus.paid.name],
    );

    return List.generate(maps.length, (i) => Bill.fromJson(maps[i]));
  }

  @override
  Future<void> createBill(Bill bill) async {
    final db = await _dbService.database;
    await db.insert(
      'bills',
      bill.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> updateBillStatus(
    String billId,
    BillStatus status,
    double paidAmount,
  ) async {
    final db = await _dbService.database;
    await db.update(
      'bills',
      {'status': status.name, 'paidAmount': paidAmount},
      where: 'id = ?',
      whereArgs: [billId],
    );
  }
}
