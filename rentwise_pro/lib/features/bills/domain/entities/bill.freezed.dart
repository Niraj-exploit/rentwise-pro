// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bill {

 String get id; String get tenantId; String get unitId; String get month; int get year; double get rentAmount; double get electricityAmount; double get waterAmount; double get internetAmount; double get otherCharges; double get previousDues; double get totalAmount; double get paidAmount; BillStatus get status; DateTime get dueDate; DateTime? get createdAt;
/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillCopyWith<Bill> get copyWith => _$BillCopyWithImpl<Bill>(this as Bill, _$identity);

  /// Serializes this Bill to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bill&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.rentAmount, rentAmount) || other.rentAmount == rentAmount)&&(identical(other.electricityAmount, electricityAmount) || other.electricityAmount == electricityAmount)&&(identical(other.waterAmount, waterAmount) || other.waterAmount == waterAmount)&&(identical(other.internetAmount, internetAmount) || other.internetAmount == internetAmount)&&(identical(other.otherCharges, otherCharges) || other.otherCharges == otherCharges)&&(identical(other.previousDues, previousDues) || other.previousDues == previousDues)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tenantId,unitId,month,year,rentAmount,electricityAmount,waterAmount,internetAmount,otherCharges,previousDues,totalAmount,paidAmount,status,dueDate,createdAt);

@override
String toString() {
  return 'Bill(id: $id, tenantId: $tenantId, unitId: $unitId, month: $month, year: $year, rentAmount: $rentAmount, electricityAmount: $electricityAmount, waterAmount: $waterAmount, internetAmount: $internetAmount, otherCharges: $otherCharges, previousDues: $previousDues, totalAmount: $totalAmount, paidAmount: $paidAmount, status: $status, dueDate: $dueDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BillCopyWith<$Res>  {
  factory $BillCopyWith(Bill value, $Res Function(Bill) _then) = _$BillCopyWithImpl;
@useResult
$Res call({
 String id, String tenantId, String unitId, String month, int year, double rentAmount, double electricityAmount, double waterAmount, double internetAmount, double otherCharges, double previousDues, double totalAmount, double paidAmount, BillStatus status, DateTime dueDate, DateTime? createdAt
});




}
/// @nodoc
class _$BillCopyWithImpl<$Res>
    implements $BillCopyWith<$Res> {
  _$BillCopyWithImpl(this._self, this._then);

  final Bill _self;
  final $Res Function(Bill) _then;

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tenantId = null,Object? unitId = null,Object? month = null,Object? year = null,Object? rentAmount = null,Object? electricityAmount = null,Object? waterAmount = null,Object? internetAmount = null,Object? otherCharges = null,Object? previousDues = null,Object? totalAmount = null,Object? paidAmount = null,Object? status = null,Object? dueDate = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tenantId: null == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,rentAmount: null == rentAmount ? _self.rentAmount : rentAmount // ignore: cast_nullable_to_non_nullable
as double,electricityAmount: null == electricityAmount ? _self.electricityAmount : electricityAmount // ignore: cast_nullable_to_non_nullable
as double,waterAmount: null == waterAmount ? _self.waterAmount : waterAmount // ignore: cast_nullable_to_non_nullable
as double,internetAmount: null == internetAmount ? _self.internetAmount : internetAmount // ignore: cast_nullable_to_non_nullable
as double,otherCharges: null == otherCharges ? _self.otherCharges : otherCharges // ignore: cast_nullable_to_non_nullable
as double,previousDues: null == previousDues ? _self.previousDues : previousDues // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BillStatus,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Bill].
extension BillPatterns on Bill {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bill value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bill() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bill value)  $default,){
final _that = this;
switch (_that) {
case _Bill():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bill value)?  $default,){
final _that = this;
switch (_that) {
case _Bill() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String tenantId,  String unitId,  String month,  int year,  double rentAmount,  double electricityAmount,  double waterAmount,  double internetAmount,  double otherCharges,  double previousDues,  double totalAmount,  double paidAmount,  BillStatus status,  DateTime dueDate,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bill() when $default != null:
return $default(_that.id,_that.tenantId,_that.unitId,_that.month,_that.year,_that.rentAmount,_that.electricityAmount,_that.waterAmount,_that.internetAmount,_that.otherCharges,_that.previousDues,_that.totalAmount,_that.paidAmount,_that.status,_that.dueDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String tenantId,  String unitId,  String month,  int year,  double rentAmount,  double electricityAmount,  double waterAmount,  double internetAmount,  double otherCharges,  double previousDues,  double totalAmount,  double paidAmount,  BillStatus status,  DateTime dueDate,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Bill():
return $default(_that.id,_that.tenantId,_that.unitId,_that.month,_that.year,_that.rentAmount,_that.electricityAmount,_that.waterAmount,_that.internetAmount,_that.otherCharges,_that.previousDues,_that.totalAmount,_that.paidAmount,_that.status,_that.dueDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String tenantId,  String unitId,  String month,  int year,  double rentAmount,  double electricityAmount,  double waterAmount,  double internetAmount,  double otherCharges,  double previousDues,  double totalAmount,  double paidAmount,  BillStatus status,  DateTime dueDate,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Bill() when $default != null:
return $default(_that.id,_that.tenantId,_that.unitId,_that.month,_that.year,_that.rentAmount,_that.electricityAmount,_that.waterAmount,_that.internetAmount,_that.otherCharges,_that.previousDues,_that.totalAmount,_that.paidAmount,_that.status,_that.dueDate,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bill implements Bill {
  const _Bill({required this.id, required this.tenantId, required this.unitId, required this.month, required this.year, required this.rentAmount, required this.electricityAmount, required this.waterAmount, required this.internetAmount, this.otherCharges = 0.0, this.previousDues = 0.0, required this.totalAmount, this.paidAmount = 0.0, required this.status, required this.dueDate, this.createdAt});
  factory _Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);

@override final  String id;
@override final  String tenantId;
@override final  String unitId;
@override final  String month;
@override final  int year;
@override final  double rentAmount;
@override final  double electricityAmount;
@override final  double waterAmount;
@override final  double internetAmount;
@override@JsonKey() final  double otherCharges;
@override@JsonKey() final  double previousDues;
@override final  double totalAmount;
@override@JsonKey() final  double paidAmount;
@override final  BillStatus status;
@override final  DateTime dueDate;
@override final  DateTime? createdAt;

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillCopyWith<_Bill> get copyWith => __$BillCopyWithImpl<_Bill>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bill&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.rentAmount, rentAmount) || other.rentAmount == rentAmount)&&(identical(other.electricityAmount, electricityAmount) || other.electricityAmount == electricityAmount)&&(identical(other.waterAmount, waterAmount) || other.waterAmount == waterAmount)&&(identical(other.internetAmount, internetAmount) || other.internetAmount == internetAmount)&&(identical(other.otherCharges, otherCharges) || other.otherCharges == otherCharges)&&(identical(other.previousDues, previousDues) || other.previousDues == previousDues)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tenantId,unitId,month,year,rentAmount,electricityAmount,waterAmount,internetAmount,otherCharges,previousDues,totalAmount,paidAmount,status,dueDate,createdAt);

@override
String toString() {
  return 'Bill(id: $id, tenantId: $tenantId, unitId: $unitId, month: $month, year: $year, rentAmount: $rentAmount, electricityAmount: $electricityAmount, waterAmount: $waterAmount, internetAmount: $internetAmount, otherCharges: $otherCharges, previousDues: $previousDues, totalAmount: $totalAmount, paidAmount: $paidAmount, status: $status, dueDate: $dueDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BillCopyWith<$Res> implements $BillCopyWith<$Res> {
  factory _$BillCopyWith(_Bill value, $Res Function(_Bill) _then) = __$BillCopyWithImpl;
@override @useResult
$Res call({
 String id, String tenantId, String unitId, String month, int year, double rentAmount, double electricityAmount, double waterAmount, double internetAmount, double otherCharges, double previousDues, double totalAmount, double paidAmount, BillStatus status, DateTime dueDate, DateTime? createdAt
});




}
/// @nodoc
class __$BillCopyWithImpl<$Res>
    implements _$BillCopyWith<$Res> {
  __$BillCopyWithImpl(this._self, this._then);

  final _Bill _self;
  final $Res Function(_Bill) _then;

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tenantId = null,Object? unitId = null,Object? month = null,Object? year = null,Object? rentAmount = null,Object? electricityAmount = null,Object? waterAmount = null,Object? internetAmount = null,Object? otherCharges = null,Object? previousDues = null,Object? totalAmount = null,Object? paidAmount = null,Object? status = null,Object? dueDate = null,Object? createdAt = freezed,}) {
  return _then(_Bill(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tenantId: null == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,rentAmount: null == rentAmount ? _self.rentAmount : rentAmount // ignore: cast_nullable_to_non_nullable
as double,electricityAmount: null == electricityAmount ? _self.electricityAmount : electricityAmount // ignore: cast_nullable_to_non_nullable
as double,waterAmount: null == waterAmount ? _self.waterAmount : waterAmount // ignore: cast_nullable_to_non_nullable
as double,internetAmount: null == internetAmount ? _self.internetAmount : internetAmount // ignore: cast_nullable_to_non_nullable
as double,otherCharges: null == otherCharges ? _self.otherCharges : otherCharges // ignore: cast_nullable_to_non_nullable
as double,previousDues: null == previousDues ? _self.previousDues : previousDues // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BillStatus,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
