import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import 'package:rentwise_pro/shared/widgets/app_text_field.dart';
import 'package:rentwise_pro/shared/widgets/app_buttons.dart';
import '../../domain/entities/tenant.dart';

class AddTenantScreen extends ConsumerStatefulWidget {
  final String? unitId;

  const AddTenantScreen({super.key, this.unitId});

  @override
  ConsumerState<AddTenantScreen> createState() => _AddTenantScreenState();
}

class _AddTenantScreenState extends ConsumerState<AddTenantScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_formKey.currentState!.validate()) {
      // Logic to save tenant to SQLite would go here via TenantRepository
      // For now, we simulate the success and go back
      if (mounted) context.pop();
    }
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
              const SizedBox(height: 40),
              PrimaryButton(label: 'Register Tenant', onPressed: _save),
            ],
          ),
        ),
      ),
    );
  }
}
