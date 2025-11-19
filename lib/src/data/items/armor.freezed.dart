// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'armor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Armor {

 Item get item; int get naturalPR; int get magicPR; int get breakFight; BodyLocation get bodyLocation;
/// Create a copy of Armor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArmorCopyWith<Armor> get copyWith => _$ArmorCopyWithImpl<Armor>(this as Armor, _$identity);

  /// Serializes this Armor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Armor&&(identical(other.item, item) || other.item == item)&&(identical(other.naturalPR, naturalPR) || other.naturalPR == naturalPR)&&(identical(other.magicPR, magicPR) || other.magicPR == magicPR)&&(identical(other.breakFight, breakFight) || other.breakFight == breakFight)&&(identical(other.bodyLocation, bodyLocation) || other.bodyLocation == bodyLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,naturalPR,magicPR,breakFight,bodyLocation);

@override
String toString() {
  return 'Armor(item: $item, naturalPR: $naturalPR, magicPR: $magicPR, breakFight: $breakFight, bodyLocation: $bodyLocation)';
}


}

/// @nodoc
abstract mixin class $ArmorCopyWith<$Res>  {
  factory $ArmorCopyWith(Armor value, $Res Function(Armor) _then) = _$ArmorCopyWithImpl;
@useResult
$Res call({
 Item item, int naturalPR, int magicPR, int breakFight, BodyLocation bodyLocation
});


$ItemCopyWith<$Res> get item;

}
/// @nodoc
class _$ArmorCopyWithImpl<$Res>
    implements $ArmorCopyWith<$Res> {
  _$ArmorCopyWithImpl(this._self, this._then);

  final Armor _self;
  final $Res Function(Armor) _then;

/// Create a copy of Armor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,Object? naturalPR = null,Object? magicPR = null,Object? breakFight = null,Object? bodyLocation = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Item,naturalPR: null == naturalPR ? _self.naturalPR : naturalPR // ignore: cast_nullable_to_non_nullable
as int,magicPR: null == magicPR ? _self.magicPR : magicPR // ignore: cast_nullable_to_non_nullable
as int,breakFight: null == breakFight ? _self.breakFight : breakFight // ignore: cast_nullable_to_non_nullable
as int,bodyLocation: null == bodyLocation ? _self.bodyLocation : bodyLocation // ignore: cast_nullable_to_non_nullable
as BodyLocation,
  ));
}
/// Create a copy of Armor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCopyWith<$Res> get item {
  
  return $ItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// Adds pattern-matching-related methods to [Armor].
extension ArmorPatterns on Armor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Armor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Armor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Armor value)  $default,){
final _that = this;
switch (_that) {
case _Armor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Armor value)?  $default,){
final _that = this;
switch (_that) {
case _Armor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Item item,  int naturalPR,  int magicPR,  int breakFight,  BodyLocation bodyLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Armor() when $default != null:
return $default(_that.item,_that.naturalPR,_that.magicPR,_that.breakFight,_that.bodyLocation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Item item,  int naturalPR,  int magicPR,  int breakFight,  BodyLocation bodyLocation)  $default,) {final _that = this;
switch (_that) {
case _Armor():
return $default(_that.item,_that.naturalPR,_that.magicPR,_that.breakFight,_that.bodyLocation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Item item,  int naturalPR,  int magicPR,  int breakFight,  BodyLocation bodyLocation)?  $default,) {final _that = this;
switch (_that) {
case _Armor() when $default != null:
return $default(_that.item,_that.naturalPR,_that.magicPR,_that.breakFight,_that.bodyLocation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Armor extends Armor {
  const _Armor({this.item = const Item(name: '', price: 0, weight: 0, type: ItemType.armor), this.naturalPR = 0, this.magicPR = 0, this.breakFight = 0, this.bodyLocation = BodyLocation.head}): super._();
  factory _Armor.fromJson(Map<String, dynamic> json) => _$ArmorFromJson(json);

@override@JsonKey() final  Item item;
@override@JsonKey() final  int naturalPR;
@override@JsonKey() final  int magicPR;
@override@JsonKey() final  int breakFight;
@override@JsonKey() final  BodyLocation bodyLocation;

/// Create a copy of Armor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArmorCopyWith<_Armor> get copyWith => __$ArmorCopyWithImpl<_Armor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArmorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Armor&&(identical(other.item, item) || other.item == item)&&(identical(other.naturalPR, naturalPR) || other.naturalPR == naturalPR)&&(identical(other.magicPR, magicPR) || other.magicPR == magicPR)&&(identical(other.breakFight, breakFight) || other.breakFight == breakFight)&&(identical(other.bodyLocation, bodyLocation) || other.bodyLocation == bodyLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,naturalPR,magicPR,breakFight,bodyLocation);

@override
String toString() {
  return 'Armor(item: $item, naturalPR: $naturalPR, magicPR: $magicPR, breakFight: $breakFight, bodyLocation: $bodyLocation)';
}


}

/// @nodoc
abstract mixin class _$ArmorCopyWith<$Res> implements $ArmorCopyWith<$Res> {
  factory _$ArmorCopyWith(_Armor value, $Res Function(_Armor) _then) = __$ArmorCopyWithImpl;
@override @useResult
$Res call({
 Item item, int naturalPR, int magicPR, int breakFight, BodyLocation bodyLocation
});


@override $ItemCopyWith<$Res> get item;

}
/// @nodoc
class __$ArmorCopyWithImpl<$Res>
    implements _$ArmorCopyWith<$Res> {
  __$ArmorCopyWithImpl(this._self, this._then);

  final _Armor _self;
  final $Res Function(_Armor) _then;

/// Create a copy of Armor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? naturalPR = null,Object? magicPR = null,Object? breakFight = null,Object? bodyLocation = null,}) {
  return _then(_Armor(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Item,naturalPR: null == naturalPR ? _self.naturalPR : naturalPR // ignore: cast_nullable_to_non_nullable
as int,magicPR: null == magicPR ? _self.magicPR : magicPR // ignore: cast_nullable_to_non_nullable
as int,breakFight: null == breakFight ? _self.breakFight : breakFight // ignore: cast_nullable_to_non_nullable
as int,bodyLocation: null == bodyLocation ? _self.bodyLocation : bodyLocation // ignore: cast_nullable_to_non_nullable
as BodyLocation,
  ));
}

/// Create a copy of Armor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCopyWith<$Res> get item {
  
  return $ItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

// dart format on
