import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rentwise_pro/core/theme/app_text_styles.dart';
import 'package:rentwise_pro/core/theme/app_colors.dart';
import 'package:rentwise_pro/shared/widgets/app_card.dart';

class TenantDetailPage extends ConsumerWidget {
  final String tenantId;

  const TenantDetailPage({super.key, required this.tenantId});

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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            AppCard(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuDF9X_7XZrrt_4X1TqJx98VpyMs5pINu8Y-_zHg7aBDhzud48gW6nLhwgzPrKfOu8_rJXvzRQyshSS5rtTuJ79KNcYSZHrJnVI3_mpcAIz5cUUcyB56u49a_Ph40HHJVg2dg488tzlU9nsSm5BB_BDFjuLNxub8OKcrS99zje4B-kLGc34Ngtk4WFf8ZB1AQkAILvsugwMGCGbxvRlVrvGs68B9sbvK86Z4u4r5q68LMhm37TMohoy4aeIDbNEJIMEuW84gAEjH_Wg',
                    ),
                    backgroundColor: AppColors.primaryContainer,
                  ),
                  const SizedBox(height: 16),
                  Text('Sita Tamang', style: AppTextStyles.headlineMedium),
                  Text(
                    'Tenant since Oct 2023',
                    style: AppTextStyles.bodyMedium,
                  ),
                  const SizedBox(height: 24),

                  Row(
                    children: [
                      const Icon(Icons.call, color: AppColors.outline),
                      const SizedBox(width: 12),
                      Text(
                        '+977 9841234567',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.onSurface,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Icons.mail, color: AppColors.outline),
                      const SizedBox(width: 12),
                      Text(
                        'sita.tamang@example.com',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.onSurface,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.chat),
                          label: const Text('Message'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.onPrimary,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                          label: const Text('Edit'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.onSurface,
                            side: const BorderSide(color: AppColors.outline),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            AppCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('KYC Status', style: AppTextStyles.headlineSmall),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.secondary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 16,
                              color: AppColors.secondary,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Verified',
                              style: TextStyle(
                                color: AppColors.secondary,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.outlineVariant),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.badge_outlined,
                        color: AppColors.outline,
                      ),
                      title: Text(
                        'Citizenship Document',
                        style: AppTextStyles.bodyMedium,
                      ),
                      trailing: const Icon(
                        Icons.open_in_new,
                        color: AppColors.outlineVariant,
                      ),
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.outlineVariant),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.description_outlined,
                        color: AppColors.outline,
                      ),
                      title: Text(
                        'Lease Agreement',
                        style: AppTextStyles.bodyMedium,
                      ),
                      trailing: const Icon(
                        Icons.open_in_new,
                        color: AppColors.outlineVariant,
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
