import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import 'package:rentwise_pro/core/theme/app_text_styles.dart';
import 'package:rentwise_pro/shared/widgets/app_text_field.dart';
import 'package:rentwise_pro/shared/widgets/app_buttons.dart';
import 'package:rentwise_pro/shared/widgets/app_card.dart';
import 'package:rentwise_pro/features/bills/domain/entities/bill.dart';
import 'package:rentwise_pro/features/payments/domain/entities/payment.dart';

class RecordPaymentScreen extends ConsumerStatefulWidget {
  final Bill bill;

  const RecordPaymentScreen({super.key, required this.bill});

  @override
  ConsumerState<RecordPaymentScreen> createState() =>
      _RecordPaymentScreenState();
}

class _RecordPaymentScreenState extends ConsumerState<RecordPaymentScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _amountController;
  final _remarksController = TextEditingController();
  String _selectedMethod = 'Cash';

  @override
  void initState() {
    super.initState();
    final remainingAmount = widget.bill.totalAmount - widget.bill.paidAmount;
    _amountController = TextEditingController(text: remainingAmount.toString());
  }

  @override
  void dispose() {
    _amountController.dispose();
    _remarksController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Record Payment')),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppCard(
                color: Colors.green.withOpacity(0.05),
                child: Column(
                  children: [
                    _InfoRow(
                      label: 'Total Bill',
                      value: 'Rs. ${widget.bill.totalAmount}',
                    ),
                    _InfoRow(
                      label: 'Already Paid',
                      value: 'Rs. ${widget.bill.paidAmount}',
                    ),
                    const Divider(),
                    _InfoRow(
                      label: 'Balance Due',
                      value:
                          'Rs. ${widget.bill.totalAmount - widget.bill.paidAmount}',
                      isBold: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              AppTextField(
                label: 'Payment Amount',
                controller: _amountController,
                keyboardType: TextInputType.number,
                prefixIcon: Icons.payments_outlined,
                validator: (v) {
                  final val = double.tryParse(v ?? '');
                  if (val == null || val <= 0) return 'Enter a valid amount';
                  return null;
                },
              ),
              const SizedBox(height: 24),
              Text('Payment Method', style: AppTextStyles.labelMedium),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: _selectedMethod,
                decoration: const InputDecoration(),
                items: ['Cash', 'E-Sewa', 'Khalti', 'Bank Transfer']
                    .map((m) => DropdownMenuItem(value: m, child: Text(m)))
                    .toList(),
                onChanged: (v) => setState(() => _selectedMethod = v!),
              ),
              const SizedBox(height: 24),
              AppTextField(
                label: 'Remarks (Optional)',
                hint: 'e.g. Received by hand',
                controller: _remarksController,
                prefixIcon: Icons.notes,
              ),
              const SizedBox(height: 40),
              PrimaryButton(
                label: 'Finalize Payment',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Logic to record payment and update bill status would go here
                    context.pop();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  const _InfoRow({
    required this.label,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTextStyles.bodyMedium),
          Text(
            value,
            style: isBold
                ? AppTextStyles.labelMedium
                : AppTextStyles.bodyMedium,
          ),
        ],
      ),
    );
  }
}
