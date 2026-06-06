import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import 'package:rentwise_pro/core/services/billing_service.dart';
import 'package:rentwise_pro/core/theme/app_text_styles.dart';
import 'package:rentwise_pro/shared/widgets/app_text_field.dart';
import 'package:rentwise_pro/shared/widgets/app_buttons.dart';
import 'package:rentwise_pro/shared/widgets/app_card.dart';
import '../../domain/entities/bill.dart';
import 'package:rentwise_pro/features/units/domain/entities/unit.dart';

class GenerateBillScreen extends ConsumerStatefulWidget {
  final Unit unit;

  const GenerateBillScreen({super.key, required this.unit});

  @override
  ConsumerState<GenerateBillScreen> createState() => _GenerateBillScreenState();
}

class _GenerateBillScreenState extends ConsumerState<GenerateBillScreen> {
  final _formKey = GlobalKey<FormState>();
  final _prevReadingController = TextEditingController(
    text: '1250',
  ); // Mock prev reading
  final _currReadingController = TextEditingController();
  final _otherChargesController = TextEditingController(text: '0');

  double _electricityCharge = 0.0;
  double _totalAmount = 0.0;
  final _billingService = BillingService();

  void _calculate() {
    final prev = double.tryParse(_prevReadingController.text) ?? 0;
    final curr = double.tryParse(_currReadingController.text) ?? 0;
    final others = double.tryParse(_otherChargesController.text) ?? 0;

    if (curr >= prev) {
      setState(() {
        _electricityCharge = _billingService.calculateElectricity(
          curr,
          prev,
          12.0,
        );
        _totalAmount = _billingService.calculateTotalMonthlyBill(
          baseRent: widget.unit.baseRent,
          electricityCharge: _electricityCharge,
          waterCharge: 500,
          internetCharge: 1000,
          otherCharges: others,
          previousDues: widget.unit.currentDues,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generate Bill - ${widget.unit.unitNumber}')),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Electricity Reading', style: AppTextStyles.labelMedium),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      label: 'Previous',
                      controller: _prevReadingController,
                      keyboardType: TextInputType.number,
                      enabled: false,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: AppTextField(
                      label: 'Current',
                      hint: 'Enter reading',
                      controller: _currReadingController,
                      keyboardType: TextInputType.number,
                      validator: (v) =>
                          (double.tryParse(v ?? '') ?? 0) <
                              (double.tryParse(_prevReadingController.text) ??
                                  0)
                          ? 'Must be > Prev'
                          : null,
                      onChanged: (_) => _calculate(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              AppTextField(
                label: 'Other Charges',
                controller: _otherChargesController,
                keyboardType: TextInputType.number,
                onChanged: (_) => _calculate(),
              ),
              const SizedBox(height: 32),
              AppCard(
                color: Colors.blue.withOpacity(0.05),
                child: Column(
                  children: [
                    _BillRow(label: 'Base Rent', value: widget.unit.baseRent),
                    _BillRow(label: 'Electricity', value: _electricityCharge),
                    _BillRow(label: 'Water (Flat)', value: 500),
                    _BillRow(label: 'Internet (Flat)', value: 1000),
                    if (widget.unit.currentDues > 0)
                      _BillRow(
                        label: 'Previous Dues',
                        value: widget.unit.currentDues,
                        isRed: true,
                      ),
                    const Divider(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: AppTextStyles.headlineSmall,
                        ),
                        Text(
                          'Rs. $_totalAmount',
                          style: AppTextStyles.headlineSmall.copyWith(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              PrimaryButton(
                label: 'Generate & Finalize Bill',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Logic to save bill to SQLite would go here
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

class _BillRow extends StatelessWidget {
  final String label;
  final double value;
  final bool isRed;

  const _BillRow({
    required this.label,
    required this.value,
    this.isRed = false,
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
            'Rs. $value',
            style: AppTextStyles.labelMedium.copyWith(
              color: isRed ? Colors.red : null,
            ),
          ),
        ],
      ),
    );
  }
}
