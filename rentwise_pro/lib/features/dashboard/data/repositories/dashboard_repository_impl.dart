import '../../domain/entities/dashboard_summary.dart';
import '../../domain/repositories/dashboard_repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  @override
  Future<DashboardSummary> getDashboardSummary() async {
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));

    return DashboardSummary(
      totalMonthlyCollection: 450000.0,
      totalPendingDues: 125000.0,
      occupiedUnits: 42,
      vacantUnits: 8,
      overdueTenants: 5,
      recentPayments: [
        RecentPayment(
          id: '1',
          tenantName: 'Niraj Paudel',
          unitName: 'Flat 201',
          amount: 15000.0,
          date: DateTime.now().subtract(const Duration(days: 1)),
          status: 'Paid',
        ),
        RecentPayment(
          id: '2',
          tenantName: 'Arjun Thapa',
          unitName: 'Shop 05',
          amount: 25000.0,
          date: DateTime.now().subtract(const Duration(days: 2)),
          status: 'Paid',
        ),
      ],
    );
  }
}
