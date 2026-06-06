import 'package:dio/dio.dart';
import '../../domain/entities/block.dart';
import '../../domain/repositories/block_repository.dart';
import 'package:rentwise_pro/core/network/api_client.dart';
import 'package:rentwise_pro/core/storage/database_service.dart';

class BlockRepositoryImpl implements BlockRepository {
  final DatabaseService _dbService;
  final ApiClient _apiClient;

  BlockRepositoryImpl(this._dbService, this._apiClient);

  Future<void> _cacheBlocks(List<Block> blocks) async {
    final db = await _dbService.database;

    // Replace cache with fresh data from API
    await db.delete('blocks');

    for (final block in blocks) {
      await db.insert('blocks', block.toJson());
    }
  }

  @override
  Future<List<Block>> getBlocks() async {
    try {
      final response = await _apiClient.get('/blocks');

      final data = response.data;
      final List<dynamic> list =
          (data is List) ? data : (data['data'] as List<dynamic>);

      final blocks = list
          .map((e) => Block.fromJson((e as Map).cast<String, dynamic>()))
          .toList();

      await _cacheBlocks(blocks);
      return blocks;
    } on DioException {
      // Fallback to cached SQLite
      final db = await _dbService.database;
      final List<Map<String, dynamic>> maps = await db.query('blocks');
      return List.generate(maps.length, (i) => Block.fromJson(maps[i]));
    }
  }

  @override
  Future<Block> getBlockById(String id) async {
    try {
      final response = await _apiClient.get('/blocks/$id');

      final data = response.data;
      final Map<String, dynamic> json =
          (data is Map && data['data'] != null) ? data['data'] : data;

      final block = Block.fromJson(json);

      // Cache single block
      final db = await _dbService.database;
      await db.delete('blocks', where: 'id = ?', whereArgs: [id]);
      await db.insert('blocks', block.toJson());

      return block;
    } on DioException {
      final db = await _dbService.database;
      final List<Map<String, dynamic>> maps = await db.query(
        'blocks',
        where: 'id = ?',
        whereArgs: [id],
      );

      if (maps.isNotEmpty) {
        return Block.fromJson(maps.first);
      }
      throw Exception('Block not found (cached) and API request failed');
    }
  }

  @override
  Future<void> createBlock(Block block) async {
    // Local create; API sync can be added later if needed
    final db = await _dbService.database;
    await db.insert('blocks', block.toJson());
  }
}
