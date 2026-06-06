// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardSummary {

 double get totalMonthlyCollection; double get totalPendingDues; int get occupiedUnits; int get vacantUnits; int get overdueTenants; List<RecentPayment> get recentPayments;
/// Create a copy of DashboardSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardSummaryCopyWith<DashboardSummary> get copyWith => _$DashboardSummaryCopyWithImpl<DashboardSummary>(this as DashboardSummary, _$identity);

  /// Serializes this DashboardSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardSummary&&(identical(other.totalMonthlyCollection, totalMonthlyCollection) || other.totalMonthlyCollection == totalMonthlyCollection)&&(identical(other.totalPendingDues, totalPendingDues) || other.totalPendingDues == totalPendingDues)&&(identical(other.occupiedUnits, occupiedUnits) || other.occupiedUnits == occupiedUnits)&&(identical(other.vacantUnits, vacantUnits) || other.vacantUnits == vacantUnits)&&(identical(other.overdueTenants, overdueTenants) || other.overdueTenants == overdueTenants)&&const DeepCollectionEquality().equals(other.recentPayments, recentPayments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalMonthlyCollection,totalPendingDues,occupiedUnits,vacantUnits,overdueTenants,const DeepCollectionEquality().hash(recentPayments));

@override
String toString() {
  return 'DashboardSummary(totalMonthlyCollection: $totalMonthlyCollection, totalPendingDues: $totalPendingDues, occupiedUnits: $occupiedUnits, vacantUnits: $vacantUnits, overdueTenants: $overdueTenants, recentPayments: $recentPayments)';
}


}

/// @nodoc
abstract mixin class $DashboardSummaryCopyWith<$Res>  {
  factory $DashboardSummaryCopyWith(DashboardSummary value, $Res Function(DashboardSummary) _then) = _$DashboardSummaryCopyWithImpl;
@useResult
$Res call({
 double totalMonthlyCollection, double totalPendingDues, int occupiedUnits, int vacantUnits, int overdueTenants, List<RecentPayment> recentPayments
});




}
/// @nodoc
class _$DashboardSummaryCopyWithImpl<$Res>
    implements $DashboardSummaryCopyWith<$Res> {
  _$DashboardSummaryCopyWithImpl(this._self, this._then);

  final DashboardSummary _self;
  final $Res Function(DashboardSummary) _then;

/// Create a copy of DashboardSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalMonthlyCollection = null,Object? totalPendingDues = null,Object? occupiedUnits = null,Object? vacantUnits = null,Object? overdueTenants = null,Object? recentPayments = null,}) {
  return _then(_self.copyWith(
totalMonthlyCollection: null == totalMonthlyCollection ? _self.totalMonthlyCollection : totalMonthlyCollection // ignore: cast_nullable_to_non_nullable
as double,totalPendingDues: null == totalPendingDues ? _self.totalPendingDues : totalPendingDues // ignore: cast_nullable_to_non_nullable
as double,occupiedUnits: null == occupiedUnits ? _self.occupiedUnits : occupiedUnits // ignore: cast_nullable_to_non_nullable
as int,vacantUnits: null == vacantUnits ? _self.vacantUnits : vacantUnits // ignore: cast_nullable_to_non_nullable
as int,overdueTenants: null == overdueTenants ? _self.overdueTenants : overdueTenants // ignore: cast_nullable_to_non_nullable
as int,recentPayments: null == recentPayments ? _self.recentPayments : recentPayments // ignore: cast_nullable_to_non_nullable
as List<RecentPayment>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardSummary].
extension DashboardSummaryPatterns on DashboardSummary {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardSummary() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardSummary value)  $default,){
final _that = this;
switch (_that) {
case _DashboardSummary():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardSummary value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardSummary() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double totalMonthlyCollection,  double totalPendingDues,  int occupiedUnits,  int vacantUnits,  int overdueTenants,  List<RecentPayment> recentPayments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardSummary() when $default != null:
return $default(_that.totalMonthlyCollection,_that.totalPendingDues,_that.occupiedUnits,_that.vacantUnits,_that.overdueTenants,_that.recentPayments);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double totalMonthlyCollection,  double totalPendingDues,  int occupiedUnits,  int vacantUnits,  int overdueTenants,  List<RecentPayment> recentPayments)  $default,) {final _that = this;
switch (_that) {
case _DashboardSummary():
return $default(_that.totalMonthlyCollection,_that.totalPendingDues,_that.occupiedUnits,_that.vacantUnits,_that.overdueTenants,_that.recentPayments);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double totalMonthlyCollection,  double totalPendingDues,  int occupiedUnits,  int vacantUnits,  int overdueTenants,  List<RecentPayment> recentPayments)?  $default,) {final _that = this;
switch (_that) {
case _DashboardSummary() when $default != null:
return $default(_that.totalMonthlyCollection,_that.totalPendingDues,_that.occupiedUnits,_that.vacantUnits,_that.overdueTenants,_that.recentPayments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardSummary implements DashboardSummary {
  const _DashboardSummary({required this.totalMonthlyCollection, required this.totalPendingDues, required this.occupiedUnits, required this.vacantUnits, required this.overdueTenants, required final  List<RecentPayment> recentPayments}): _recentPayments = recentPayments;
  factory _DashboardSummary.fromJson(Map<String, dynamic> json) => _$DashboardSummaryFromJson(json);

@override final  double totalMonthlyCollection;
@override final  double totalPendingDues;
@override final  int occupiedUnits;
@override final  int vacantUnits;
@override final  int overdueTenants;
 final  List<RecentPayment> _recentPayments;
@override List<RecentPayment> get recentPayments {
  if (_recentPayments is EqualUnmodifiableListView) return _recentPayments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentPayments);
}


/// Create a copy of DashboardSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardSummaryCopyWith<_DashboardSummary> get copyWith => __$DashboardSummaryCopyWithImpl<_DashboardSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardSummary&&(identical(other.totalMonthlyCollection, totalMonthlyCollection) || other.totalMonthlyCollection == totalMonthlyCollection)&&(identical(other.totalPendingDues, totalPendingDues) || other.totalPendingDues == totalPendingDues)&&(identical(other.occupiedUnits, occupiedUnits) || other.occupiedUnits == occupiedUnits)&&(identical(other.vacantUnits, vacantUnits) || other.vacantUnits == vacantUnits)&&(identical(other.overdueTenants, overdueTenants) || other.overdueTenants == overdueTenants)&&const DeepCollectionEquality().equals(other._recentPayments, _recentPayments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalMonthlyCollection,totalPendingDues,occupiedUnits,vacantUnits,overdueTenants,const DeepCollectionEquality().hash(_recentPayments));

@override
String toString() {
  return 'DashboardSummary(totalMonthlyCollection: $totalMonthlyCollection, totalPendingDues: $totalPendingDues, occupiedUnits: $occupiedUnits, vacantUnits: $vacantUnits, overdueTenants: $overdueTenants, recentPayments: $recentPayments)';
}


}

/// @nodoc
abstract mixin class _$DashboardSummaryCopyWith<$Res> implements $DashboardSummaryCopyWith<$Res> {
  factory _$DashboardSummaryCopyWith(_DashboardSummary value, $Res Function(_DashboardSummary) _then) = __$DashboardSummaryCopyWithImpl;
@override @useResult
$Res call({
 double totalMonthlyCollection, double totalPendingDues, int occupiedUnits, int vacantUnits, int overdueTenants, List<RecentPayment> recentPayments
});




}
/// @nodoc
class __$DashboardSummaryCopyWithImpl<$Res>
    implements _$DashboardSummaryCopyWith<$Res> {
  __$DashboardSummaryCopyWithImpl(this._self, this._then);

  final _DashboardSummary _self;
  final $Res Function(_DashboardSummary) _then;

/// Create a copy of DashboardSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalMonthlyCollection = null,Object? totalPendingDues = null,Object? occupiedUnits = null,Object? vacantUnits = null,Object? overdueTenants = null,Object? recentPayments = null,}) {
  return _then(_DashboardSummary(
totalMonthlyCollection: null == totalMonthlyCollection ? _self.totalMonthlyCollection : totalMonthlyCollection // ignore: cast_nullable_to_non_nullable
as double,totalPendingDues: null == totalPendingDues ? _self.totalPendingDues : totalPendingDues // ignore: cast_nullable_to_non_nullable
as double,occupiedUnits: null == occupiedUnits ? _self.occupiedUnits : occupiedUnits // ignore: cast_nullable_to_non_nullable
as int,vacantUnits: null == vacantUnits ? _self.vacantUnits : vacantUnits // ignore: cast_nullable_to_non_nullable
as int,overdueTenants: null == overdueTenants ? _self.overdueTenants : overdueTenants // ignore: cast_nullable_to_non_nullable
as int,recentPayments: null == recentPayments ? _self._recentPayments : recentPayments // ignore: cast_nullable_to_non_nullable
as List<RecentPayment>,
  ));
}


}


/// @nodoc
mixin _$RecentPayment {

 String get id; String get tenantName; String get unitName; double get amount; DateTime get date; String get status;
/// Create a copy of RecentPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentPaymentCopyWith<RecentPayment> get copyWith => _$RecentPaymentCopyWithImpl<RecentPayment>(this as RecentPayment, _$identity);

  /// Serializes this RecentPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantName, tenantName) || other.tenantName == tenantName)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tenantName,unitName,amount,date,status);

@override
String toString() {
  return 'RecentPayment(id: $id, tenantName: $tenantName, unitName: $unitName, amount: $amount, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class $RecentPaymentCopyWith<$Res>  {
  factory $RecentPaymentCopyWith(RecentPayment value, $Res Function(RecentPayment) _then) = _$RecentPaymentCopyWithImpl;
@useResult
$Res call({
 String id, String tenantName, String unitName, double amount, DateTime date, String status
});




}
/// @nodoc
class _$RecentPaymentCopyWithImpl<$Res>
    implements $RecentPaymentCopyWith<$Res> {
  _$RecentPaymentCopyWithImpl(this._self, this._then);

  final RecentPayment _self;
  final $Res Function(RecentPayment) _then;

/// Create a copy of RecentPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tenantName = null,Object? unitName = null,Object? amount = null,Object? date = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentPayment].
extension RecentPaymentPatterns on RecentPayment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentPayment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentPayment value)  $default,){
final _that = this;
switch (_that) {
case _RecentPayment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentPayment value)?  $default,){
final _that = this;
switch (_that) {
case _RecentPayment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String tenantName,  String unitName,  double amount,  DateTime date,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentPayment() when $default != null:
return $default(_that.id,_that.tenantName,_that.unitName,_that.amount,_that.date,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String tenantName,  String unitName,  double amount,  DateTime date,  String status)  $default,) {final _that = this;
switch (_that) {
case _RecentPayment():
return $default(_that.id,_that.tenantName,_that.unitName,_that.amount,_that.date,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String tenantName,  String unitName,  double amount,  DateTime date,  String status)?  $default,) {final _that = this;
switch (_that) {
case _RecentPayment() when $default != null:
return $default(_that.id,_that.tenantName,_that.unitName,_that.amount,_that.date,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentPayment implements RecentPayment {
  const _RecentPayment({required this.id, required this.tenantName, required this.unitName, required this.amount, required this.date, required this.status});
  factory _RecentPayment.fromJson(Map<String, dynamic> json) => _$RecentPaymentFromJson(json);

@override final  String id;
@override final  String tenantName;
@override final  String unitName;
@override final  double amount;
@override final  DateTime date;
@override final  String status;

/// Create a copy of RecentPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentPaymentCopyWith<_RecentPayment> get copyWith => __$RecentPaymentCopyWithImpl<_RecentPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentPayment&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantName, tenantName) || other.tenantName == tenantName)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tenantName,unitName,amount,date,status);

@override
String toString() {
  return 'RecentPayment(id: $id, tenantName: $tenantName, unitName: $unitName, amount: $amount, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class _$RecentPaymentCopyWith<$Res> implements $RecentPaymentCopyWith<$Res> {
  factory _$RecentPaymentCopyWith(_RecentPayment value, $Res Function(_RecentPayment) _then) = __$RecentPaymentCopyWithImpl;
@override @useResult
$Res call({
 String id, String tenantName, String unitName, double amount, DateTime date, String status
});




}
/// @nodoc
class __$RecentPaymentCopyWithImpl<$Res>
    implements _$RecentPaymentCopyWith<$Res> {
  __$RecentPaymentCopyWithImpl(this._self, this._then);

  final _RecentPayment _self;
  final $Res Function(_RecentPayment) _then;

/// Create a copy of RecentPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tenantName = null,Object? unitName = null,Object? amount = null,Object? date = null,Object? status = null,}) {
  return _then(_RecentPayment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
