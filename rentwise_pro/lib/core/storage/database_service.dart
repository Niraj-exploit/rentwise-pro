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

    // NOTE: bumping DB schema version is required because we add new tables/columns
    return await openDatabase(
      path,
      version: 2,
      onCreate: _createDB,
      onUpgrade: _onUpgrade,
    );
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

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      // Agreements Table
      await db.execute('''
        CREATE TABLE agreements (
          id TEXT PRIMARY KEY,
          tenantId TEXT NOT NULL,
          unitId TEXT NOT NULL,
          startDate TEXT NOT NULL,
          baseRent REAL NOT NULL,
          escalationPercent REAL NOT NULL,
          escalationIntervalYears INTEGER NOT NULL,
          FOREIGN KEY (tenantId) REFERENCES tenants (id),
          FOREIGN KEY (unitId) REFERENCES units (id)
        )
      ''');

      // Meter Readings Table
      await db.execute('''
        CREATE TABLE meter_readings (
          id TEXT PRIMARY KEY,
          unitId TEXT NOT NULL,
          meterId TEXT NOT NULL,
          prevReading REAL NOT NULL,
          currReading REAL NOT NULL,
          readingDate TEXT NOT NULL,
          electricityChargeComputed REAL NOT NULL,
          FOREIGN KEY (unitId) REFERENCES units (id)
        )
      ''');

      // QR Codes Table (token -> unit/tenant mapping)
      await db.execute('''
        CREATE TABLE qr_codes (
          id TEXT PRIMARY KEY,
          token TEXT UNIQUE NOT NULL,
          unitId TEXT,
          tenantId TEXT,
          FOREIGN KEY (unitId) REFERENCES units (id),
          FOREIGN KEY (tenantId) REFERENCES tenants (id)
        )
      ''');

      // Extend Tenants Table for KYC (SQLite: add nullable columns)
      await db.execute('ALTER TABLE tenants ADD COLUMN fatherName TEXT');
      await db.execute('ALTER TABLE tenants ADD COLUMN grandfatherName TEXT');
      await db.execute('ALTER TABLE tenants ADD COLUMN kycStatus TEXT');

      // Note: In option 2, meter/agreement/qr tables are added fresh on upgrade.
    }
  }

  Future<void> close() async {
    final db = await database;
    db.close();
  }
}
