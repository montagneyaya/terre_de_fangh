// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_natural_damages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddNaturalDamages {

 int get damages; String get txtDamages;
/// Create a copy of AddNaturalDamages
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNaturalDamagesCopyWith<AddNaturalDamages> get copyWith => _$AddNaturalDamagesCopyWithImpl<AddNaturalDamages>(this as AddNaturalDamages, _$identity);

  /// Serializes this AddNaturalDamages to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNaturalDamages&&(identical(other.damages, damages) || other.damages == damages)&&(identical(other.txtDamages, txtDamages) || other.txtDamages == txtDamages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,damages,txtDamages);



}

/// @nodoc
abstract mixin class $AddNaturalDamagesCopyWith<$Res>  {
  factory $AddNaturalDamagesCopyWith(AddNaturalDamages value, $Res Function(AddNaturalDamages) _then) = _$AddNaturalDamagesCopyWithImpl;
@useResult
$Res call({
 int damages, String txtDamages
});




}
/// @nodoc
class _$AddNaturalDamagesCopyWithImpl<$Res>
    implements $AddNaturalDamagesCopyWith<$Res> {
  _$AddNaturalDamagesCopyWithImpl(this._self, this._then);

  final AddNaturalDamages _self;
  final $Res Function(AddNaturalDamages) _then;

/// Create a copy of AddNaturalDamages
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? damages = null,Object? txtDamages = null,}) {
  return _then(_self.copyWith(
damages: null == damages ? _self.damages : damages // ignore: cast_nullable_to_non_nullable
as int,txtDamages: null == txtDamages ? _self.txtDamages : txtDamages // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddNaturalDamages].
extension AddNaturalDamagesPatterns on AddNaturalDamages {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddNaturalDamages value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddNaturalDamages() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddNaturalDamages value)  $default,){
final _that = this;
switch (_that) {
case _AddNaturalDamages():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddNaturalDamages value)?  $default,){
final _that = this;
switch (_that) {
case _AddNaturalDamages() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int damages,  String txtDamages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddNaturalDamages() when $default != null:
return $default(_that.damages,_that.txtDamages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int damages,  String txtDamages)  $default,) {final _that = this;
switch (_that) {
case _AddNaturalDamages():
return $default(_that.damages,_that.txtDamages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int damages,  String txtDamages)?  $default,) {final _that = this;
switch (_that) {
case _AddNaturalDamages() when $default != null:
return $default(_that.damages,_that.txtDamages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddNaturalDamages extends AddNaturalDamages {
  const _AddNaturalDamages({this.damages = 0, this.txtDamages = ''}): super._();
  factory _AddNaturalDamages.fromJson(Map<String, dynamic> json) => _$AddNaturalDamagesFromJson(json);

@override@JsonKey() final  int damages;
@override@JsonKey() final  String txtDamages;

/// Create a copy of AddNaturalDamages
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddNaturalDamagesCopyWith<_AddNaturalDamages> get copyWith => __$AddNaturalDamagesCopyWithImpl<_AddNaturalDamages>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddNaturalDamagesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddNaturalDamages&&(identical(other.damages, damages) || other.damages == damages)&&(identical(other.txtDamages, txtDamages) || other.txtDamages == txtDamages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,damages,txtDamages);



}

/// @nodoc
abstract mixin class _$AddNaturalDamagesCopyWith<$Res> implements $AddNaturalDamagesCopyWith<$Res> {
  factory _$AddNaturalDamagesCopyWith(_AddNaturalDamages value, $Res Function(_AddNaturalDamages) _then) = __$AddNaturalDamagesCopyWithImpl;
@override @useResult
$Res call({
 int damages, String txtDamages
});




}
/// @nodoc
class __$AddNaturalDamagesCopyWithImpl<$Res>
    implements _$AddNaturalDamagesCopyWith<$Res> {
  __$AddNaturalDamagesCopyWithImpl(this._self, this._then);

  final _AddNaturalDamages _self;
  final $Res Function(_AddNaturalDamages) _then;

/// Create a copy of AddNaturalDamages
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? damages = null,Object? txtDamages = null,}) {
  return _then(_AddNaturalDamages(
damages: null == damages ? _self.damages : damages // ignore: cast_nullable_to_non_nullable
as int,txtDamages: null == txtDamages ? _self.txtDamages : txtDamages // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
