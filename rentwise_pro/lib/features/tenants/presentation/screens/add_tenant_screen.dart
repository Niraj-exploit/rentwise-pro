import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import 'package:rentwise_pro/shared/widgets/app_text_field.dart';
import 'package:rentwise_pro/shared/widgets/app_buttons.dart';
import 'package:rentwise_pro/core/storage/database_service.dart';

import '../../domain/entities/tenant.dart';

class AddTenantScreen extends ConsumerStatefulWidget {
  final String? unitId;

  const AddTenantScreen({super.key, this.unitId});

  @override
  ConsumerState<AddTenantScreen> createState() => _AddTenantScreenState();
}

class _AddTenantScreenState extends ConsumerState<AddTenantScreen> {
  final _formKey = GlobalKey<FormState>();
  final _uuid = const Uuid();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _fatherController = TextEditingController();
  final _grandfatherController = TextEditingController();

  // KYC status stored as string in SQLite
  String _kycStatus = 'unverified';

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _fatherController.dispose();
    _grandfatherController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    if (widget.unitId == null || widget.unitId!.isEmpty) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Unit is required to add tenant')),
      );
      return;
    }

    final now = DateTime.now();

    final tenant = Tenant(
      id: _uuid.v4(),
      name: _nameController.text.trim(),
      phone: _phoneController.text.trim(),
      email: _emailController.text.trim().isEmpty ? null : _emailController.text.trim(),
      unitId: widget.unitId!,
      joinedDate: now,
      status: TenantStatus.active,
      balance: 0.0,

      // New gist fields
      fatherName: _fatherController.text.trim().isEmpty ? null : _fatherController.text.trim(),
      grandfatherName: _grandfatherController.text.trim().isEmpty ? null : _grandfatherController.text.trim(),
      kycStatus: _kycStatus,
    );

    final db = await ref.read(databaseServiceProvider).database;

    await db.insert('tenants', tenant.toJson());

    // Keep UI smooth: mark unit as occupied + currentTenantId
    await db.update(
      'units',
      {
        'status': 'occupied',
        'currentTenantId': tenant.id,
        'currentDues': 0.0,
      },
      where: 'id = ?',
      whereArgs: [tenant.unitId],
    );

    if (mounted) context.pop(tenant);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Tenant')),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              AppTextField(
                label: 'Full Name',
                hint: 'Enter tenant name',
                controller: _nameController,
                prefixIcon: Icons.person_outline,
                validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
              ),
              const SizedBox(height: 20),
              AppTextField(
                label: 'Phone Number',
                hint: '98XXXXXXXX',
                controller: _phoneController,
                prefixIcon: Icons.phone_outlined,
                keyboardType: TextInputType.phone,
                validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
              ),
              const SizedBox(height: 20),
              AppTextField(
                label: 'Email Address (Optional)',
                hint: 'tenant@email.com',
                controller: _emailController,
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              AppTextField(
                label: 'Father / Guardian Name (Optional)',
                hint: 'e.g. Ram Bahadur',
                controller: _fatherController,
                prefixIcon: Icons.person_search_outlined,
              ),
              const SizedBox(height: 20),
              AppTextField(
                label: 'Grandfather Name (Optional)',
                hint: 'e.g. Hari Bahadur',
                controller: _grandfatherController,
                prefixIcon: Icons.person_search_outlined,
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: _kycStatus,
                decoration: const InputDecoration(labelText: 'KYC Status'),
                items: const [
                  DropdownMenuItem(value: 'unverified', child: Text('Unverified')),
                  DropdownMenuItem(value: 'verified', child: Text('Verified')),
                ],
                onChanged: (v) {
                  if (v == null) return;
                  setState(() => _kycStatus = v);
                },
              ),
              const SizedBox(height: 40),
              PrimaryButton(
                label: 'Register Tenant',
                onPressed: _save,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
