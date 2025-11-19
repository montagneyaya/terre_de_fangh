// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weapon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Weapon {

 Item get item; Impact get impactPoint; int get breakFight;
/// Create a copy of Weapon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeaponCopyWith<Weapon> get copyWith => _$WeaponCopyWithImpl<Weapon>(this as Weapon, _$identity);

  /// Serializes this Weapon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weapon&&(identical(other.item, item) || other.item == item)&&(identical(other.impactPoint, impactPoint) || other.impactPoint == impactPoint)&&(identical(other.breakFight, breakFight) || other.breakFight == breakFight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,impactPoint,breakFight);

@override
String toString() {
  return 'Weapon(item: $item, impactPoint: $impactPoint, breakFight: $breakFight)';
}


}

/// @nodoc
abstract mixin class $WeaponCopyWith<$Res>  {
  factory $WeaponCopyWith(Weapon value, $Res Function(Weapon) _then) = _$WeaponCopyWithImpl;
@useResult
$Res call({
 Item item, Impact impactPoint, int breakFight
});


$ItemCopyWith<$Res> get item;$ImpactCopyWith<$Res> get impactPoint;

}
/// @nodoc
class _$WeaponCopyWithImpl<$Res>
    implements $WeaponCopyWith<$Res> {
  _$WeaponCopyWithImpl(this._self, this._then);

  final Weapon _self;
  final $Res Function(Weapon) _then;

/// Create a copy of Weapon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,Object? impactPoint = null,Object? breakFight = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Item,impactPoint: null == impactPoint ? _self.impactPoint : impactPoint // ignore: cast_nullable_to_non_nullable
as Impact,breakFight: null == breakFight ? _self.breakFight : breakFight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Weapon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCopyWith<$Res> get item {
  
  return $ItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}/// Create a copy of Weapon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImpactCopyWith<$Res> get impactPoint {
  
  return $ImpactCopyWith<$Res>(_self.impactPoint, (value) {
    return _then(_self.copyWith(impactPoint: value));
  });
}
}


/// Adds pattern-matching-related methods to [Weapon].
extension WeaponPatterns on Weapon {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Weapon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Weapon() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Weapon value)  $default,){
final _that = this;
switch (_that) {
case _Weapon():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Weapon value)?  $default,){
final _that = this;
switch (_that) {
case _Weapon() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Item item,  Impact impactPoint,  int breakFight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Weapon() when $default != null:
return $default(_that.item,_that.impactPoint,_that.breakFight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Item item,  Impact impactPoint,  int breakFight)  $default,) {final _that = this;
switch (_that) {
case _Weapon():
return $default(_that.item,_that.impactPoint,_that.breakFight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Item item,  Impact impactPoint,  int breakFight)?  $default,) {final _that = this;
switch (_that) {
case _Weapon() when $default != null:
return $default(_that.item,_that.impactPoint,_that.breakFight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Weapon extends Weapon {
  const _Weapon({this.item = const Item(name: '', price: 0, weight: 0, type: ItemType.weapon), this.impactPoint = const Impact(), this.breakFight = 0}): super._();
  factory _Weapon.fromJson(Map<String, dynamic> json) => _$WeaponFromJson(json);

@override@JsonKey() final  Item item;
@override@JsonKey() final  Impact impactPoint;
@override@JsonKey() final  int breakFight;

/// Create a copy of Weapon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeaponCopyWith<_Weapon> get copyWith => __$WeaponCopyWithImpl<_Weapon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeaponToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weapon&&(identical(other.item, item) || other.item == item)&&(identical(other.impactPoint, impactPoint) || other.impactPoint == impactPoint)&&(identical(other.breakFight, breakFight) || other.breakFight == breakFight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,impactPoint,breakFight);

@override
String toString() {
  return 'Weapon(item: $item, impactPoint: $impactPoint, breakFight: $breakFight)';
}


}

/// @nodoc
abstract mixin class _$WeaponCopyWith<$Res> implements $WeaponCopyWith<$Res> {
  factory _$WeaponCopyWith(_Weapon value, $Res Function(_Weapon) _then) = __$WeaponCopyWithImpl;
@override @useResult
$Res call({
 Item item, Impact impactPoint, int breakFight
});


@override $ItemCopyWith<$Res> get item;@override $ImpactCopyWith<$Res> get impactPoint;

}
/// @nodoc
class __$WeaponCopyWithImpl<$Res>
    implements _$WeaponCopyWith<$Res> {
  __$WeaponCopyWithImpl(this._self, this._then);

  final _Weapon _self;
  final $Res Function(_Weapon) _then;

/// Create a copy of Weapon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? impactPoint = null,Object? breakFight = null,}) {
  return _then(_Weapon(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Item,impactPoint: null == impactPoint ? _self.impactPoint : impactPoint // ignore: cast_nullable_to_non_nullable
as Impact,breakFight: null == breakFight ? _self.breakFight : breakFight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Weapon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCopyWith<$Res> get item {
  
  return $ItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}/// Create a copy of Weapon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImpactCopyWith<$Res> get impactPoint {
  
  return $ImpactCopyWith<$Res>(_self.impactPoint, (value) {
    return _then(_self.copyWith(impactPoint: value));
  });
}
}


/// @nodoc
mixin _$Impact {

 int get nbD; int get addDamages;
/// Create a copy of Impact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImpactCopyWith<Impact> get copyWith => _$ImpactCopyWithImpl<Impact>(this as Impact, _$identity);

  /// Serializes this Impact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Impact&&(identical(other.nbD, nbD) || other.nbD == nbD)&&(identical(other.addDamages, addDamages) || other.addDamages == addDamages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nbD,addDamages);



}

/// @nodoc
abstract mixin class $ImpactCopyWith<$Res>  {
  factory $ImpactCopyWith(Impact value, $Res Function(Impact) _then) = _$ImpactCopyWithImpl;
@useResult
$Res call({
 int nbD, int addDamages
});




}
/// @nodoc
class _$ImpactCopyWithImpl<$Res>
    implements $ImpactCopyWith<$Res> {
  _$ImpactCopyWithImpl(this._self, this._then);

  final Impact _self;
  final $Res Function(Impact) _then;

/// Create a copy of Impact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nbD = null,Object? addDamages = null,}) {
  return _then(_self.copyWith(
nbD: null == nbD ? _self.nbD : nbD // ignore: cast_nullable_to_non_nullable
as int,addDamages: null == addDamages ? _self.addDamages : addDamages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Impact].
extension ImpactPatterns on Impact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Impact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Impact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Impact value)  $default,){
final _that = this;
switch (_that) {
case _Impact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Impact value)?  $default,){
final _that = this;
switch (_that) {
case _Impact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int nbD,  int addDamages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Impact() when $default != null:
return $default(_that.nbD,_that.addDamages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int nbD,  int addDamages)  $default,) {final _that = this;
switch (_that) {
case _Impact():
return $default(_that.nbD,_that.addDamages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int nbD,  int addDamages)?  $default,) {final _that = this;
switch (_that) {
case _Impact() when $default != null:
return $default(_that.nbD,_that.addDamages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Impact extends Impact {
  const _Impact({this.nbD = 0, this.addDamages = 0}): super._();
  factory _Impact.fromJson(Map<String, dynamic> json) => _$ImpactFromJson(json);

@override@JsonKey() final  int nbD;
@override@JsonKey() final  int addDamages;

/// Create a copy of Impact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImpactCopyWith<_Impact> get copyWith => __$ImpactCopyWithImpl<_Impact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImpactToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Impact&&(identical(other.nbD, nbD) || other.nbD == nbD)&&(identical(other.addDamages, addDamages) || other.addDamages == addDamages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nbD,addDamages);



}

/// @nodoc
abstract mixin class _$ImpactCopyWith<$Res> implements $ImpactCopyWith<$Res> {
  factory _$ImpactCopyWith(_Impact value, $Res Function(_Impact) _then) = __$ImpactCopyWithImpl;
@override @useResult
$Res call({
 int nbD, int addDamages
});




}
/// @nodoc
class __$ImpactCopyWithImpl<$Res>
    implements _$ImpactCopyWith<$Res> {
  __$ImpactCopyWithImpl(this._self, this._then);

  final _Impact _self;
  final $Res Function(_Impact) _then;

/// Create a copy of Impact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nbD = null,Object? addDamages = null,}) {
  return _then(_Impact(
nbD: null == nbD ? _self.nbD : nbD // ignore: cast_nullable_to_non_nullable
as int,addDamages: null == addDamages ? _self.addDamages : addDamages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
