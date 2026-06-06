import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/dashboard_controller.dart';
import 'package:rentwise_pro/shared/widgets/app_card.dart';
import 'package:rentwise_pro/shared/widgets/status_badge.dart';
import 'package:rentwise_pro/core/theme/app_text_styles.dart';
import 'package:rentwise_pro/core/theme/app_colors.dart';
import 'package:rentwise_pro/features/analytics/presentation/providers/analytics_controller.dart';
import 'package:rentwise_pro/features/analytics/presentation/widgets/collection_chart.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  void _onItemTapped(int index, BuildContext context) {
    // For now we just implement simple routing
    switch (index) {
      case 0:
        // Already on dashboard
        break;
      case 1:
        context.push('/dashboard/blocks');
        break;
      case 2:
        context.push('/dashboard/billing-invoices');
        break;
      case 3:
        // settings or profile
        break;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(dashboardControllerProvider);
    final analyticsState = ref.watch(analyticsControllerProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          'Rentwise Pro',
          style: AppTextStyles.headlineSmall.copyWith(
            color: AppColors.onPrimary,
          ),
        ),
        iconTheme: const IconThemeData(color: AppColors.onPrimary),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: dashboardState.when(
        data: (summary) => RefreshIndicator(
          onRefresh: () =>
              ref.read(dashboardControllerProvider.notifier).refresh(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good morning, Rajesh',
                      style: AppTextStyles.headlineLarge.copyWith(height: 1.2),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Here is the overview of your properties for October 2023.',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Metric Cards Bento Grid
                // Pending Dues Card
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.outlineVariant),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -32,
                        right: -32,
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.errorContainer.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(80),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total Pending Dues',
                                      style: AppTextStyles.labelMedium.copyWith(
                                        color: AppColors.onSurfaceVariant,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'NPR ${summary.totalPendingDues}',
                                      style: AppTextStyles.headlineLarge
                                          .copyWith(color: AppColors.error),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    color: AppColors.errorContainer,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.warning,
                                    color: AppColors.error,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'From ${summary.overdueTenants} tenants. 2 are over 30 days late.',
                              style: AppTextStyles.bodySmall.copyWith(
                                color: AppColors.onSurfaceVariant,
                              ),
                            ),
                            const SizedBox(height: 12),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'View Details',
                                    style: AppTextStyles.labelMedium.copyWith(
                                      color: AppColors.error,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Icon(
                                    Icons.arrow_forward,
                                    size: 16,
                                    color: AppColors.error,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Revenue Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.outlineVariant),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Monthly Revenue',
                                style: AppTextStyles.labelMedium.copyWith(
                                  color: AppColors.onSurfaceVariant,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'NPR ${summary.totalMonthlyCollection}',
                                style: AppTextStyles.headlineLarge.copyWith(
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: AppColors.successContainer,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.account_balance_wallet,
                              color: AppColors.success,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Collection Goal (85%)',
                            style: AppTextStyles.labelSmall.copyWith(
                              color: AppColors.onSurfaceVariant,
                            ),
                          ),
                          Text(
                            'On Track',
                            style: AppTextStyles.labelSmall.copyWith(
                              color: AppColors.success,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: 0.85,
                        backgroundColor: AppColors.surfaceContainerHighest,
                        color: AppColors.primary,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Occupancy Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.outlineVariant),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: CircularProgressIndicator(
                                value:
                                    (summary.occupiedUnits +
                                            summary.vacantUnits >
                                        0)
                                    ? summary.occupiedUnits /
                                          (summary.occupiedUnits +
                                              summary.vacantUnits)
                                    : 0,
                                strokeWidth: 8,
                                backgroundColor:
                                    AppColors.surfaceContainerHighest,
                                color: AppColors.success,
                              ),
                            ),
                            Text(
                              '${(summary.occupiedUnits + summary.vacantUnits > 0) ? (summary.occupiedUnits / (summary.occupiedUnits + summary.vacantUnits) * 100).toInt() : 0}%',
                              style: AppTextStyles.titleMedium.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Occupancy Rate',
                              style: AppTextStyles.titleMedium,
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: const BoxDecoration(
                                        color: AppColors.success,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '${summary.occupiedUnits} Occupied',
                                      style: AppTextStyles.bodySmall.copyWith(
                                        color: AppColors.onSurfaceVariant,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: const BoxDecoration(
                                        color:
                                            AppColors.surfaceContainerHighest,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '${summary.vacantUnits} Vacant',
                                      style: AppTextStyles.bodySmall.copyWith(
                                        color: AppColors.onSurfaceVariant,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Collection Trend
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.outlineVariant),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Collection Trend',
                        style: AppTextStyles.labelMedium.copyWith(
                          color: AppColors.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 120,
                        child: analyticsState.when(
                          data: (data) => CollectionChart(data: data),
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          error: (err, _) => Text('Error loading charts: $err'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Quick Actions
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.outlineVariant),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Quick Actions', style: AppTextStyles.titleMedium),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _QuickActionBtn(
                            label: 'Gen Bills',
                            icon: Icons.receipt_long,
                            bgColor: AppColors.primaryContainer,
                            fgColor: AppColors.onPrimaryContainer,
                            onTap: () => context.go('/rent-collection'),
                          ),
                          _QuickActionBtn(
                            label: 'Add Pay',
                            icon: Icons.payments,
                            bgColor: AppColors.successContainer,
                            fgColor: AppColors.success,
                            onTap: () {},
                          ),
                          _QuickActionBtn(
                            label: 'Meter Read',
                            icon: Icons.speed,
                            bgColor: AppColors.warningContainer,
                            fgColor: AppColors.onPrimary,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Recent Activity
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.outlineVariant),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Activity', style: AppTextStyles.titleMedium),
                          Text(
                            'View All',
                            style: AppTextStyles.labelSmall.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: summary.recentPayments.length,
                        separatorBuilder: (_, __) => const Divider(
                          color: AppColors.outlineVariant,
                          height: 24,
                        ),
                        itemBuilder: (context, index) {
                          final payment = summary.recentPayments[index];
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                  color: AppColors.surfaceContainer,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.check_circle,
                                  size: 16,
                                  color: AppColors.onSurfaceVariant,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${payment.tenantName} paid NPR ${payment.amount}',
                                      style: AppTextStyles.bodyMedium,
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      '${payment.unitName} • 2 hrs ago',
                                      style: AppTextStyles.labelSmall.copyWith(
                                        color: AppColors.onSurfaceVariant,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Camera Action
        },
        shape: const CircleBorder(),
        backgroundColor: AppColors.primary,
        elevation: 2,
        child: const Icon(Icons.camera_alt, color: AppColors.onPrimary),
      ),
      floatingActionButtonLocation: const _LoweredCenterDockedFabLocation(),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: AppColors.surface,
        elevation: 8,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(
          height: 64,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _BottomNavItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
                isSelected: true,
                onTap: () => _onItemTapped(0, context),
              ),
              _BottomNavItem(
                icon: Icons.apartment_outlined,
                label: 'Buildings',
                isSelected: false,
                onTap: () => _onItemTapped(1, context),
              ),
              const SizedBox(width: 48), // Space for centered FAB
              _BottomNavItem(
                icon: Icons.receipt_long_outlined,
                label: 'Bills',
                isSelected: false,
                onTap: () => _onItemTapped(2, context),
              ),
              _BottomNavItem(
                icon: Icons.settings_outlined,
                label: 'Settings',
                isSelected: false,
                onTap: () => _onItemTapped(3, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoweredCenterDockedFabLocation extends FloatingActionButtonLocation {
  const _LoweredCenterDockedFabLocation();

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final Offset offset =
        FloatingActionButtonLocation.centerDocked.getOffset(scaffoldGeometry);
    // Lower the FAB by adding to the Y offset
    return Offset(offset.dx, offset.dy + 16.0);
  }
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _BottomNavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? AppColors.primary : AppColors.onSurfaceVariant;
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SizedBox(
        width: 64,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTextStyles.labelSmall.copyWith(
                color: color,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickActionBtn extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color bgColor;
  final Color fgColor;
  final VoidCallback onTap;

  const _QuickActionBtn({
    required this.label,
    required this.icon,
    required this.bgColor,
    required this.fgColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
              child: Icon(icon, color: fgColor),
            ),
            const SizedBox(height: 8),
            Text(label, style: AppTextStyles.labelSmall),
          ],
        ),
      ),
    );
  }
}
