// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Unit {

 String get id; String get blockId; String get unitNumber; String get floor; UnitType get type; double get baseRent; UnitStatus get status; String? get currentTenantId; double get currentDues;
/// Create a copy of Unit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitCopyWith<Unit> get copyWith => _$UnitCopyWithImpl<Unit>(this as Unit, _$identity);

  /// Serializes this Unit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unit&&(identical(other.id, id) || other.id == id)&&(identical(other.blockId, blockId) || other.blockId == blockId)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.type, type) || other.type == type)&&(identical(other.baseRent, baseRent) || other.baseRent == baseRent)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentTenantId, currentTenantId) || other.currentTenantId == currentTenantId)&&(identical(other.currentDues, currentDues) || other.currentDues == currentDues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,blockId,unitNumber,floor,type,baseRent,status,currentTenantId,currentDues);

@override
String toString() {
  return 'Unit(id: $id, blockId: $blockId, unitNumber: $unitNumber, floor: $floor, type: $type, baseRent: $baseRent, status: $status, currentTenantId: $currentTenantId, currentDues: $currentDues)';
}


}

/// @nodoc
abstract mixin class $UnitCopyWith<$Res>  {
  factory $UnitCopyWith(Unit value, $Res Function(Unit) _then) = _$UnitCopyWithImpl;
@useResult
$Res call({
 String id, String blockId, String unitNumber, String floor, UnitType type, double baseRent, UnitStatus status, String? currentTenantId, double currentDues
});




}
/// @nodoc
class _$UnitCopyWithImpl<$Res>
    implements $UnitCopyWith<$Res> {
  _$UnitCopyWithImpl(this._self, this._then);

  final Unit _self;
  final $Res Function(Unit) _then;

/// Create a copy of Unit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? blockId = null,Object? unitNumber = null,Object? floor = null,Object? type = null,Object? baseRent = null,Object? status = null,Object? currentTenantId = freezed,Object? currentDues = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,blockId: null == blockId ? _self.blockId : blockId // ignore: cast_nullable_to_non_nullable
as String,unitNumber: null == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as UnitType,baseRent: null == baseRent ? _self.baseRent : baseRent // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UnitStatus,currentTenantId: freezed == currentTenantId ? _self.currentTenantId : currentTenantId // ignore: cast_nullable_to_non_nullable
as String?,currentDues: null == currentDues ? _self.currentDues : currentDues // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Unit].
extension UnitPatterns on Unit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Unit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Unit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Unit value)  $default,){
final _that = this;
switch (_that) {
case _Unit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Unit value)?  $default,){
final _that = this;
switch (_that) {
case _Unit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String blockId,  String unitNumber,  String floor,  UnitType type,  double baseRent,  UnitStatus status,  String? currentTenantId,  double currentDues)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Unit() when $default != null:
return $default(_that.id,_that.blockId,_that.unitNumber,_that.floor,_that.type,_that.baseRent,_that.status,_that.currentTenantId,_that.currentDues);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String blockId,  String unitNumber,  String floor,  UnitType type,  double baseRent,  UnitStatus status,  String? currentTenantId,  double currentDues)  $default,) {final _that = this;
switch (_that) {
case _Unit():
return $default(_that.id,_that.blockId,_that.unitNumber,_that.floor,_that.type,_that.baseRent,_that.status,_that.currentTenantId,_that.currentDues);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String blockId,  String unitNumber,  String floor,  UnitType type,  double baseRent,  UnitStatus status,  String? currentTenantId,  double currentDues)?  $default,) {final _that = this;
switch (_that) {
case _Unit() when $default != null:
return $default(_that.id,_that.blockId,_that.unitNumber,_that.floor,_that.type,_that.baseRent,_that.status,_that.currentTenantId,_that.currentDues);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Unit implements Unit {
  const _Unit({required this.id, required this.blockId, required this.unitNumber, required this.floor, required this.type, required this.baseRent, required this.status, this.currentTenantId, this.currentDues = 0.0});
  factory _Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

@override final  String id;
@override final  String blockId;
@override final  String unitNumber;
@override final  String floor;
@override final  UnitType type;
@override final  double baseRent;
@override final  UnitStatus status;
@override final  String? currentTenantId;
@override@JsonKey() final  double currentDues;

/// Create a copy of Unit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitCopyWith<_Unit> get copyWith => __$UnitCopyWithImpl<_Unit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unit&&(identical(other.id, id) || other.id == id)&&(identical(other.blockId, blockId) || other.blockId == blockId)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.type, type) || other.type == type)&&(identical(other.baseRent, baseRent) || other.baseRent == baseRent)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentTenantId, currentTenantId) || other.currentTenantId == currentTenantId)&&(identical(other.currentDues, currentDues) || other.currentDues == currentDues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,blockId,unitNumber,floor,type,baseRent,status,currentTenantId,currentDues);

@override
String toString() {
  return 'Unit(id: $id, blockId: $blockId, unitNumber: $unitNumber, floor: $floor, type: $type, baseRent: $baseRent, status: $status, currentTenantId: $currentTenantId, currentDues: $currentDues)';
}


}

/// @nodoc
abstract mixin class _$UnitCopyWith<$Res> implements $UnitCopyWith<$Res> {
  factory _$UnitCopyWith(_Unit value, $Res Function(_Unit) _then) = __$UnitCopyWithImpl;
@override @useResult
$Res call({
 String id, String blockId, String unitNumber, String floor, UnitType type, double baseRent, UnitStatus status, String? currentTenantId, double currentDues
});




}
/// @nodoc
class __$UnitCopyWithImpl<$Res>
    implements _$UnitCopyWith<$Res> {
  __$UnitCopyWithImpl(this._self, this._then);

  final _Unit _self;
  final $Res Function(_Unit) _then;

/// Create a copy of Unit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? blockId = null,Object? unitNumber = null,Object? floor = null,Object? type = null,Object? baseRent = null,Object? status = null,Object? currentTenantId = freezed,Object? currentDues = null,}) {
  return _then(_Unit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,blockId: null == blockId ? _self.blockId : blockId // ignore: cast_nullable_to_non_nullable
as String,unitNumber: null == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as UnitType,baseRent: null == baseRent ? _self.baseRent : baseRent // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UnitStatus,currentTenantId: freezed == currentTenantId ? _self.currentTenantId : currentTenantId // ignore: cast_nullable_to_non_nullable
as String?,currentDues: null == currentDues ? _self.currentDues : currentDues // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
