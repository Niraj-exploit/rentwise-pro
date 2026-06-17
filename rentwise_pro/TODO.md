# Rentwise Pro - Implementation TODO

## Batch 1: Foundation data model + persistence (Option 2: Full landlord gist)
- [x] Update `lib/core/storage/database_service.dart`
  - [x] Bump DB schema version 1 -> 2
  - [x] Add schema migration (`_onUpgrade`) to create:
    - [ ] `agreements` table
    - [ ] `meter_readings` table
    - [ ] `qr_codes` table
  - [x] Extend `tenants` table with KYC columns:
    - [x] `fatherName`
    - [x] `grandfatherName`
    - [x] `kycStatus`
- [ ] Add new Dart entities (Freezed)
  - [ ] `Agreement` entity
  - [ ] `MeterReading` entity
  - [ ] `QrMapping` entity
- [x] Update existing Dart entity
  - [x] Extend `Tenant` entity with KYC fields
- [ ] Add repositories + providers
  - [ ] `AgreementRepository` (SQLite + optional API integration)
  - [ ] `MeterReadingRepository`
  - [ ] `QrMappingRepository`
- [ ] Update billing pipeline
  - [ ] Update `GenerateBillScreen` to persist `bills` using:
    - [ ] stored meter readings (prev/curr + electricity charge computed)
    - [ ] escalated rent computed from agreement interval
  - [ ] Implement “overwrite baseRent” behavior in billing logic
- [x] Update UI to include new fields (minimal screens to start)
  - [x] Add fields to `AddTenantScreen` for father/grandfather + kycStatus
  - [x] Add fields to `TenantDetailPage` to show KYC (currently placeholder)
- [x] Run `flutter test`
- [ ] Smoke test: DB opens + migration to v2 does not crash

## Batch 2: Full landlord flows (after Batch 1 compiles/runs)
- [ ] Implement QR → unit mapping + collection UI (QR token input first)
- [ ] Implement payment recording UI to insert into `payments` + update `bills.paidAmount/status`
- [ ] Implement bill status transitions:
  - unpaid / partial / paid / overdue based on dueDate + paidAmount
