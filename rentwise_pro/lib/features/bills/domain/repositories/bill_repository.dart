import '../../domain/entities/bill.dart';

abstract class BillRepository {
  Future<List<Bill>> getBillsByTenant(String tenantId);
  Future<List<Bill>> getUnpaidBills();
  Future<void> createBill(Bill bill);
  Future<void> updateBillStatus(
    String billId,
    BillStatus status,
    double paidAmount,
  );
}
