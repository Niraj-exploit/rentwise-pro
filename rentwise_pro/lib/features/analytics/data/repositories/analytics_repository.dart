import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rentwise_pro/core/storage/database_service.dart';

final analyticsRepositoryProvider = Provider<AnalyticsRepository>((ref) {
  return AnalyticsRepository(ref.read(databaseServiceProvider));
});

class AnalyticsRepository {
  final DatabaseService _dbService;

  AnalyticsRepository(this._dbService);

  Future<Map<String, double>> getMonthlyCollectionData() async {
    final db = await _dbService.database;

    // Aggregate payments by month (simplified for demo)
    final List<Map<String, dynamic>> result = await db.rawQuery('''
      SELECT substr(date, 6, 2) as month, SUM(amount) as total 
      FROM payments 
      GROUP BY month 
      ORDER BY month ASC
    ''');

    final Map<String, double> data = {};
    for (var row in result) {
      data[row['month']] = (row['total'] as num).toDouble();
    }

    // Fill with mock if empty for visual demo
    if (data.isEmpty) {
      return {
        '01': 120000.0,
        '02': 150000.0,
        '03': 180000.0,
        '04': 140000.0,
        '05': 210000.0,
      };
    }

    return data;
  }
}
