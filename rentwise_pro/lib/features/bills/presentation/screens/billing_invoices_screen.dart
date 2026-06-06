import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rentwise_pro/core/theme/app_text_styles.dart';
import 'package:rentwise_pro/core/theme/app_colors.dart';
import 'package:rentwise_pro/shared/widgets/app_card.dart';

class BillingInvoicesScreen extends ConsumerWidget {
  const BillingInvoicesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hamro Property',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: AppColors.primary,
            ),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CircleAvatar(
              backgroundColor: AppColors.primaryContainer,
              radius: 16,
              child: Text(
                'LP',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.onPrimaryContainer,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Billing & Invoices', style: AppTextStyles.headlineMedium),
            const SizedBox(height: 4),
            Text(
              'Manage monthly billing, electricity readings, and custom invoices.',
              style: AppTextStyles.bodyMedium,
            ),
            const SizedBox(height: 24),

            AppCard(
              padding: EdgeInsets.zero,
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.receipt_long,
                    color: AppColors.primary,
                  ),
                ),
                title: Text(
                  'Generate Monthly Bills',
                  style: AppTextStyles.headlineSmall,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Process rent and utilities for all units at once',
                    style: AppTextStyles.bodySmall,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.outline,
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 12),
            AppCard(
              padding: EdgeInsets.zero,
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.post_add, color: AppColors.secondary),
                ),
                title: Text(
                  'Record Custom Bill',
                  style: AppTextStyles.headlineSmall,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Add manual charges or one-off fees',
                    style: AppTextStyles.bodySmall,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.outline,
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 12),
            AppCard(
              padding: EdgeInsets.zero,
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.surfaceVariant,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.history,
                    color: AppColors.onSurfaceVariant,
                  ),
                ),
                title: Text(
                  'Payment History',
                  style: AppTextStyles.headlineSmall,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    'View paid invoices and receipts',
                    style: AppTextStyles.bodySmall,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.outline,
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 12),
            AppCard(
              padding: EdgeInsets.zero,
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.errorContainer,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.warning_amber_rounded,
                    color: AppColors.error,
                  ),
                ),
                title: Text(
                  'Overdue Invoices',
                  style: AppTextStyles.headlineSmall,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Follow up on pending payments',
                    style: AppTextStyles.bodySmall,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.outline,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
