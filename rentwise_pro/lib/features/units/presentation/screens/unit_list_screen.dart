import 'package:rentwise_pro/core/theme/app_colors.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rentwise_pro/core/theme/app_text_styles.dart';
import 'package:rentwise_pro/shared/widgets/app_card.dart';
import 'package:rentwise_pro/shared/widgets/status_badge.dart';
import 'package:rentwise_pro/features/units/domain/entities/unit.dart';

import '../providers/units_controller.dart';

class UnitListScreen extends ConsumerWidget {
  final String blockId;

  const UnitListScreen({super.key, required this.blockId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unitsState = ref.watch(unitsControllerProvider(blockId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Units'),
        actions: [
          IconButton(
            onPressed: () => ref
                .read(unitsControllerProvider(blockId).notifier)
                .refresh(blockId),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: unitsState.when(
        data: (units) => ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: units.length,
          itemBuilder: (context, index) {
            final unit = units[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: AppCard(
                onTap: () {
                  if (unit.currentTenantId != null) {
                    context.push('/tenants/${unit.currentTenantId}');
                  }
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            unit.unitNumber,
                            style: AppTextStyles.labelMedium,
                          ),
                          Text(
                            '${unit.floor} • ${unit.type.name.toUpperCase()}',
                            style: AppTextStyles.bodySmall,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Base Rent: Rs. ${unit.baseRent}',
                            style: AppTextStyles.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        StatusBadge(
                          label: unit.status.name,
                          type: _getStatusType(unit.status),
                        ),
                        const SizedBox(height: 8),
                        if (unit.status == UnitStatus.vacant)
                          TextButton(
                            onPressed: () =>
                                context.push('/tenants/add', extra: unit.id),
                            child: Text(
                              'Add Tenant',
                              style: AppTextStyles.labelSmall.copyWith(
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        if (unit.status == UnitStatus.occupied)
                          TextButton(
                            onPressed: () =>
                                context.push('/generate-bill', extra: unit),
                            child: Text(
                              'Generate Bill',
                              style: AppTextStyles.labelSmall.copyWith(
                                color: AppColors.success,
                              ),
                            ),
                          ),
                        if (unit.currentDues > 0) ...[
                          const SizedBox(height: 4),
                          Text(
                            'Dues: Rs. ${unit.currentDues}',
                            style: AppTextStyles.labelSmall.copyWith(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }

  StatusType _getStatusType(UnitStatus status) {
    switch (status) {
      case UnitStatus.occupied:
        return StatusType.paid; // Using green for occupied
      case UnitStatus.vacant:
        return StatusType.pending; // Using orange for vacant
      case UnitStatus.maintenance:
        return StatusType.overdue; // Using red for maintenance
    }
  }
}
