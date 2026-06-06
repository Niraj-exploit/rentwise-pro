// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Block {

 String get id; String get name; String get address; int get totalUnits; int get occupiedUnits; double get monthlyRevenue;
/// Create a copy of Block
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockCopyWith<Block> get copyWith => _$BlockCopyWithImpl<Block>(this as Block, _$identity);

  /// Serializes this Block to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Block&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.totalUnits, totalUnits) || other.totalUnits == totalUnits)&&(identical(other.occupiedUnits, occupiedUnits) || other.occupiedUnits == occupiedUnits)&&(identical(other.monthlyRevenue, monthlyRevenue) || other.monthlyRevenue == monthlyRevenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,totalUnits,occupiedUnits,monthlyRevenue);

@override
String toString() {
  return 'Block(id: $id, name: $name, address: $address, totalUnits: $totalUnits, occupiedUnits: $occupiedUnits, monthlyRevenue: $monthlyRevenue)';
}


}

/// @nodoc
abstract mixin class $BlockCopyWith<$Res>  {
  factory $BlockCopyWith(Block value, $Res Function(Block) _then) = _$BlockCopyWithImpl;
@useResult
$Res call({
 String id, String name, String address, int totalUnits, int occupiedUnits, double monthlyRevenue
});




}
/// @nodoc
class _$BlockCopyWithImpl<$Res>
    implements $BlockCopyWith<$Res> {
  _$BlockCopyWithImpl(this._self, this._then);

  final Block _self;
  final $Res Function(Block) _then;

/// Create a copy of Block
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? totalUnits = null,Object? occupiedUnits = null,Object? monthlyRevenue = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,totalUnits: null == totalUnits ? _self.totalUnits : totalUnits // ignore: cast_nullable_to_non_nullable
as int,occupiedUnits: null == occupiedUnits ? _self.occupiedUnits : occupiedUnits // ignore: cast_nullable_to_non_nullable
as int,monthlyRevenue: null == monthlyRevenue ? _self.monthlyRevenue : monthlyRevenue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Block].
extension BlockPatterns on Block {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Block value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Block() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Block value)  $default,){
final _that = this;
switch (_that) {
case _Block():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Block value)?  $default,){
final _that = this;
switch (_that) {
case _Block() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String address,  int totalUnits,  int occupiedUnits,  double monthlyRevenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Block() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.totalUnits,_that.occupiedUnits,_that.monthlyRevenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String address,  int totalUnits,  int occupiedUnits,  double monthlyRevenue)  $default,) {final _that = this;
switch (_that) {
case _Block():
return $default(_that.id,_that.name,_that.address,_that.totalUnits,_that.occupiedUnits,_that.monthlyRevenue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String address,  int totalUnits,  int occupiedUnits,  double monthlyRevenue)?  $default,) {final _that = this;
switch (_that) {
case _Block() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.totalUnits,_that.occupiedUnits,_that.monthlyRevenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Block implements Block {
  const _Block({required this.id, required this.name, required this.address, required this.totalUnits, required this.occupiedUnits, this.monthlyRevenue = 0.0});
  factory _Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);

@override final  String id;
@override final  String name;
@override final  String address;
@override final  int totalUnits;
@override final  int occupiedUnits;
@override@JsonKey() final  double monthlyRevenue;

/// Create a copy of Block
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockCopyWith<_Block> get copyWith => __$BlockCopyWithImpl<_Block>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlockToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Block&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.totalUnits, totalUnits) || other.totalUnits == totalUnits)&&(identical(other.occupiedUnits, occupiedUnits) || other.occupiedUnits == occupiedUnits)&&(identical(other.monthlyRevenue, monthlyRevenue) || other.monthlyRevenue == monthlyRevenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,totalUnits,occupiedUnits,monthlyRevenue);

@override
String toString() {
  return 'Block(id: $id, name: $name, address: $address, totalUnits: $totalUnits, occupiedUnits: $occupiedUnits, monthlyRevenue: $monthlyRevenue)';
}


}

/// @nodoc
abstract mixin class _$BlockCopyWith<$Res> implements $BlockCopyWith<$Res> {
  factory _$BlockCopyWith(_Block value, $Res Function(_Block) _then) = __$BlockCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String address, int totalUnits, int occupiedUnits, double monthlyRevenue
});




}
/// @nodoc
class __$BlockCopyWithImpl<$Res>
    implements _$BlockCopyWith<$Res> {
  __$BlockCopyWithImpl(this._self, this._then);

  final _Block _self;
  final $Res Function(_Block) _then;

/// Create a copy of Block
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? totalUnits = null,Object? occupiedUnits = null,Object? monthlyRevenue = null,}) {
  return _then(_Block(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,totalUnits: null == totalUnits ? _self.totalUnits : totalUnits // ignore: cast_nullable_to_non_nullable
as int,occupiedUnits: null == occupiedUnits ? _self.occupiedUnits : occupiedUnits // ignore: cast_nullable_to_non_nullable
as int,monthlyRevenue: null == monthlyRevenue ? _self.monthlyRevenue : monthlyRevenue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
