import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final databaseServiceProvider = Provider<DatabaseService>(
  (ref) => DatabaseService(),
);

class DatabaseService {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('rentwise.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'TEXT PRIMARY KEY';
    const textType = 'TEXT NOT NULL';
    const boolType = 'INTEGER NOT NULL'; // SQLite doesn't have boolean
    const integerType = 'INTEGER NOT NULL';
    const realType = 'REAL NOT NULL';

    // Blocks Table
    await db.execute('''
      CREATE TABLE blocks (
        id $idType,
        name $textType,
        address $textType,
        totalUnits $integerType,
        occupiedUnits $integerType,
        monthlyRevenue $realType
      )
    ''');

    // Units Table
    await db.execute('''
      CREATE TABLE units (
        id $idType,
        blockId $textType,
        unitNumber $textType,
        floor $textType,
        type $textType,
        baseRent $realType,
        status $textType,
        currentTenantId TEXT,
        currentDues $realType,
        FOREIGN KEY (blockId) REFERENCES blocks (id)
      )
    ''');

    // Tenants Table
    await db.execute('''
      CREATE TABLE tenants (
        id $idType,
        name $textType,
        phone $textType,
        email TEXT,
        unitId $textType,
        joinedDate $textType,
        status $textType,
        balance $realType,
        FOREIGN KEY (unitId) REFERENCES units (id)
      )
    ''');

    // Bills Table
    await db.execute('''
      CREATE TABLE bills (
        id $idType,
        tenantId $textType,
        unitId $textType,
        month $textType,
        year $integerType,
        rentAmount $realType,
        electricityAmount $realType,
        waterAmount $realType,
        internetAmount $realType,
        previousDues $realType,
        totalAmount $realType,
        paidAmount $realType,
        status $textType,
        dueDate $textType,
        FOREIGN KEY (tenantId) REFERENCES tenants (id),
        FOREIGN KEY (unitId) REFERENCES units (id)
      )
    ''');

    // Payments Table
    await db.execute('''
      CREATE TABLE payments (
        id $idType,
        billId $textType,
        tenantId $textType,
        amount $realType,
        date $textType,
        paymentMethod $textType,
        remarks TEXT,
        FOREIGN KEY (billId) REFERENCES bills (id),
        FOREIGN KEY (tenantId) REFERENCES tenants (id)
      )
    ''');
  }

  Future<void> close() async {
    final db = await database;
    db.close();
  }
}
