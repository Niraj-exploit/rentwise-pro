import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant.freezed.dart';
part 'tenant.g.dart';

@freezed
abstract class Tenant with _$Tenant {
  const factory Tenant({
    required String id,
    required String name,
    required String phone,
    String? email,
    required String unitId,
    required DateTime joinedDate,
    required TenantStatus status,
    @Default(0.0) double balance,
  }) = _Tenant;

  factory Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);
}

enum TenantStatus { active, left, blacklisted }
