import '../../domain/entities/unit.dart';

abstract class UnitRepository {
  Future<List<Unit>> getUnitsByBlock(String blockId);
  Future<Unit> getUnitById(String id);
  Future<void> createUnit(Unit unit);
  Future<void> updateUnit(Unit unit);
}
