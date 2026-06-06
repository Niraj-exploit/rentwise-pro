import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rentwise_pro/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:rentwise_pro/features/blocks/presentation/screens/block_list_screen.dart';
import 'package:rentwise_pro/features/blocks/presentation/screens/add_block_screen.dart';
import 'package:rentwise_pro/features/units/presentation/screens/unit_list_screen.dart';
import 'package:rentwise_pro/features/auth/presentation/screens/login_screen.dart';
import 'package:rentwise_pro/features/tenants/presentation/screens/tenant_detail_screen.dart';
import 'package:rentwise_pro/features/tenants/presentation/screens/add_tenant_screen.dart';
import 'package:rentwise_pro/features/bills/presentation/screens/generate_bill_screen.dart';
import 'package:rentwise_pro/features/payments/presentation/screens/record_payment_screen.dart';
import 'package:rentwise_pro/features/rent/presentation/screens/rent_collection_screen.dart';
import 'package:rentwise_pro/features/bills/presentation/screens/billing_invoices_screen.dart';
import 'package:rentwise_pro/features/bills/domain/entities/bill.dart'
    as bill_entity;
import 'package:rentwise_pro/features/units/domain/entities/unit.dart'
    as unit_entity;

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/dashboard',
        name: 'dashboard',
        builder: (context, state) => const DashboardScreen(),
        routes: [
          GoRoute(
            path: 'rent-collection',
            name: 'rent-collection',
            builder: (context, state) => const RentCollectionScreen(),
          ),
          GoRoute(
            path: 'billing-invoices',
            name: 'billing-invoices',
            builder: (context, state) => const BillingInvoicesScreen(),
          ),
          GoRoute(
            path: 'tenants/:tenantId',
            name: 'tenant-detail',
            builder: (context, state) {
              final tenantId = state.pathParameters['tenantId']!;
              return TenantDetailPage(tenantId: tenantId);
            },
          ),
          GoRoute(
            path: 'blocks',
            name: 'blocks',
            builder: (context, state) => const BlockListScreen(),
            routes: [
              GoRoute(
                path: 'add',
                name: 'add-block',
                builder: (context, state) => const AddBlockScreen(),
              ),
              GoRoute(
                path: ':blockId/units',
                name: 'units',
                builder: (context, state) {
                  final blockId = state.pathParameters['blockId']!;
                  return UnitListScreen(blockId: blockId);
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/record-payment',
        name: 'record-payment',
        builder: (context, state) {
          final bill = state.extra as bill_entity.Bill;
          return RecordPaymentScreen(bill: bill);
        },
      ),
      GoRoute(
        path: '/generate-bill',
        name: 'generate-bill',
        builder: (context, state) {
          final unit = state.extra as unit_entity.Unit;
          return GenerateBillScreen(unit: unit);
        },
      ),
      GoRoute(
        path: '/tenants/add',
        name: 'add-tenant',
        builder: (context, state) => const AddTenantScreen(),
      ),
    ],
    errorBuilder: (context, state, [_]) =>
        Scaffold(body: Center(child: Text('Page not found'))),
  );
});
