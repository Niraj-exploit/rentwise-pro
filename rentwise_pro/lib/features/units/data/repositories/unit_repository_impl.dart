import 'package:dio/dio.dart';
import '../../domain/entities/unit.dart';
import '../../domain/repositories/unit_repository.dart';
import 'package:rentwise_pro/core/network/api_client.dart';
import 'package:rentwise_pro/core/storage/database_service.dart';

class UnitRepositoryImpl implements UnitRepository {
  final DatabaseService _dbService;
  final ApiClient _apiClient;

  UnitRepositoryImpl(this._dbService, this._apiClient);

  Future<void> _cacheUnitsByBlock(String blockId, List<Unit> units) async {
    final db = await _dbService.database;

    // Replace cache with fresh data from API (scoped to blockId)
    await db.delete(
      'units',
      where: 'blockId = ?',
      whereArgs: [blockId],
    );

    for (final unit in units) {
      await db.insert('units', unit.toJson());
    }
  }

  @override
  Future<List<Unit>> getUnitsByBlock(String blockId) async {
    try {
      final response = await _apiClient.get('/blocks/$blockId/units');

      final data = response.data;
      final List<dynamic> list =
          (data is List) ? data : (data['data'] as List<dynamic>);

      final units = list
          .map((e) => Unit.fromJson((e as Map).cast<String, dynamic>()))
          .toList();

      await _cacheUnitsByBlock(blockId, units);
      return units;
    } on DioException {
      // Fallback to cached SQLite
      final db = await _dbService.database;
      final List<Map<String, dynamic>> maps = await db.query(
        'units',
        where: 'blockId = ?',
        whereArgs: [blockId],
      );

      return List.generate(maps.length, (i) {
        return Unit.fromJson(maps[i]);
      });
    }
  }

  @override
  Future<Unit> getUnitById(String id) async {
    final db = await _dbService.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'units',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Unit.fromJson(maps.first);
    }
    throw Exception('Unit not found (cached)');
  }

  @override
  Future<void> createUnit(Unit unit) async {
    final db = await _dbService.database;
    await db.insert('units', unit.toJson());
  }

  @override
  Future<void> updateUnit(Unit unit) async {
    final db = await _dbService.database;
    await db.update(
      'units',
      unit.toJson(),
      where: 'id = ?',
      whereArgs: [unit.id],
    );
  }
}
