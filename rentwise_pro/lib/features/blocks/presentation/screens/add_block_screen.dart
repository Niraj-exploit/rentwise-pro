import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import '../providers/blocks_controller.dart';
import '../../domain/entities/block.dart' as entity;
import 'package:rentwise_pro/shared/widgets/app_text_field.dart';
import 'package:rentwise_pro/shared/widgets/app_buttons.dart';

class AddBlockScreen extends ConsumerStatefulWidget {
  const AddBlockScreen({super.key});

  @override
  ConsumerState<AddBlockScreen> createState() => _AddBlockScreenState();
}

class _AddBlockScreenState extends ConsumerState<AddBlockScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _unitsController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _unitsController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_formKey.currentState!.validate()) {
      final block = entity.Block(
        id: const Uuid().v4(),
        name: _nameController.text,
        address: _addressController.text,
        totalUnits: int.parse(_unitsController.text),
        occupiedUnits: 0,
        monthlyRevenue: 0.0,
      );

      await ref.read(blockRepositoryProvider).createBlock(block);
      ref.read(blocksControllerProvider.notifier).refresh();
      if (mounted) context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Building')),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              AppTextField(
                label: 'Building Name',
                hint: 'e.g. Everest Heights',
                controller: _nameController,
                prefixIcon: Icons.apartment,
                validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
              ),
              const SizedBox(height: 20),
              AppTextField(
                label: 'Address',
                hint: 'Street, City',
                controller: _addressController,
                prefixIcon: Icons.location_on_outlined,
                validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
              ),
              const SizedBox(height: 20),
              AppTextField(
                label: 'Total Units',
                hint: 'Number of flats/shops',
                controller: _unitsController,
                prefixIcon: Icons.grid_view,
                keyboardType: TextInputType.number,
                validator: (v) => int.tryParse(v ?? '') == null
                    ? 'Enter a valid number'
                    : null,
              ),
              const SizedBox(height: 40),
              PrimaryButton(label: 'Save Building', onPressed: _save),
            ],
          ),
        ),
      ),
    );
  }
}
