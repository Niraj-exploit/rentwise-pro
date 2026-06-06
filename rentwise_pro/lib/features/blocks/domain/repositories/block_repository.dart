import '../entities/block.dart';

abstract class BlockRepository {
  Future<List<Block>> getBlocks();
  Future<Block> getBlockById(String id);
  Future<void> createBlock(Block block);
}
