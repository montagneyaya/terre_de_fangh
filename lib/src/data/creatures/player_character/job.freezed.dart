// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Job {

 String get name; List<int> get courage; List<int> get intellect; List<int> get charisma; List<int> get dexterity; List<int> get strength; int get attack; int get parry; int get hp; int get ap; int get pr; List<Specialization> get specializations; List<Skill> get inheritedSkills; List<Skill> get optionalSkills;
/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobCopyWith<Job> get copyWith => _$JobCopyWithImpl<Job>(this as Job, _$identity);

  /// Serializes this Job to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Job&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.courage, courage)&&const DeepCollectionEquality().equals(other.intellect, intellect)&&const DeepCollectionEquality().equals(other.charisma, charisma)&&const DeepCollectionEquality().equals(other.dexterity, dexterity)&&const DeepCollectionEquality().equals(other.strength, strength)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.parry, parry) || other.parry == parry)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.ap, ap) || other.ap == ap)&&(identical(other.pr, pr) || other.pr == pr)&&const DeepCollectionEquality().equals(other.specializations, specializations)&&const DeepCollectionEquality().equals(other.inheritedSkills, inheritedSkills)&&const DeepCollectionEquality().equals(other.optionalSkills, optionalSkills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(courage),const DeepCollectionEquality().hash(intellect),const DeepCollectionEquality().hash(charisma),const DeepCollectionEquality().hash(dexterity),const DeepCollectionEquality().hash(strength),attack,parry,hp,ap,pr,const DeepCollectionEquality().hash(specializations),const DeepCollectionEquality().hash(inheritedSkills),const DeepCollectionEquality().hash(optionalSkills));

@override
String toString() {
  return 'Job(name: $name, courage: $courage, intellect: $intellect, charisma: $charisma, dexterity: $dexterity, strength: $strength, attack: $attack, parry: $parry, hp: $hp, ap: $ap, pr: $pr, specializations: $specializations, inheritedSkills: $inheritedSkills, optionalSkills: $optionalSkills)';
}


}

/// @nodoc
abstract mixin class $JobCopyWith<$Res>  {
  factory $JobCopyWith(Job value, $Res Function(Job) _then) = _$JobCopyWithImpl;
@useResult
$Res call({
 String name, List<int> courage, List<int> intellect, List<int> charisma, List<int> dexterity, List<int> strength, int attack, int parry, int hp, int ap, int pr, List<Specialization> specializations, List<Skill> inheritedSkills, List<Skill> optionalSkills
});




}
/// @nodoc
class _$JobCopyWithImpl<$Res>
    implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._self, this._then);

  final Job _self;
  final $Res Function(Job) _then;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? courage = null,Object? intellect = null,Object? charisma = null,Object? dexterity = null,Object? strength = null,Object? attack = null,Object? parry = null,Object? hp = null,Object? ap = null,Object? pr = null,Object? specializations = null,Object? inheritedSkills = null,Object? optionalSkills = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,courage: null == courage ? _self.courage : courage // ignore: cast_nullable_to_non_nullable
as List<int>,intellect: null == intellect ? _self.intellect : intellect // ignore: cast_nullable_to_non_nullable
as List<int>,charisma: null == charisma ? _self.charisma : charisma // ignore: cast_nullable_to_non_nullable
as List<int>,dexterity: null == dexterity ? _self.dexterity : dexterity // ignore: cast_nullable_to_non_nullable
as List<int>,strength: null == strength ? _self.strength : strength // ignore: cast_nullable_to_non_nullable
as List<int>,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,parry: null == parry ? _self.parry : parry // ignore: cast_nullable_to_non_nullable
as int,hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as int,ap: null == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as int,pr: null == pr ? _self.pr : pr // ignore: cast_nullable_to_non_nullable
as int,specializations: null == specializations ? _self.specializations : specializations // ignore: cast_nullable_to_non_nullable
as List<Specialization>,inheritedSkills: null == inheritedSkills ? _self.inheritedSkills : inheritedSkills // ignore: cast_nullable_to_non_nullable
as List<Skill>,optionalSkills: null == optionalSkills ? _self.optionalSkills : optionalSkills // ignore: cast_nullable_to_non_nullable
as List<Skill>,
  ));
}

}


/// Adds pattern-matching-related methods to [Job].
extension JobPatterns on Job {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Job value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Job() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Job value)  $default,){
final _that = this;
switch (_that) {
case _Job():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Job value)?  $default,){
final _that = this;
switch (_that) {
case _Job() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<int> courage,  List<int> intellect,  List<int> charisma,  List<int> dexterity,  List<int> strength,  int attack,  int parry,  int hp,  int ap,  int pr,  List<Specialization> specializations,  List<Skill> inheritedSkills,  List<Skill> optionalSkills)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Job() when $default != null:
return $default(_that.name,_that.courage,_that.intellect,_that.charisma,_that.dexterity,_that.strength,_that.attack,_that.parry,_that.hp,_that.ap,_that.pr,_that.specializations,_that.inheritedSkills,_that.optionalSkills);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<int> courage,  List<int> intellect,  List<int> charisma,  List<int> dexterity,  List<int> strength,  int attack,  int parry,  int hp,  int ap,  int pr,  List<Specialization> specializations,  List<Skill> inheritedSkills,  List<Skill> optionalSkills)  $default,) {final _that = this;
switch (_that) {
case _Job():
return $default(_that.name,_that.courage,_that.intellect,_that.charisma,_that.dexterity,_that.strength,_that.attack,_that.parry,_that.hp,_that.ap,_that.pr,_that.specializations,_that.inheritedSkills,_that.optionalSkills);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<int> courage,  List<int> intellect,  List<int> charisma,  List<int> dexterity,  List<int> strength,  int attack,  int parry,  int hp,  int ap,  int pr,  List<Specialization> specializations,  List<Skill> inheritedSkills,  List<Skill> optionalSkills)?  $default,) {final _that = this;
switch (_that) {
case _Job() when $default != null:
return $default(_that.name,_that.courage,_that.intellect,_that.charisma,_that.dexterity,_that.strength,_that.attack,_that.parry,_that.hp,_that.ap,_that.pr,_that.specializations,_that.inheritedSkills,_that.optionalSkills);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Job extends Job {
  const _Job({this.name = 'None', final  List<int> courage = const [8, 20], final  List<int> intellect = const [8, 20], final  List<int> charisma = const [8, 20], final  List<int> dexterity = const [8, 20], final  List<int> strength = const [8, 20], this.attack = 0, this.parry = 0, this.hp = 0, this.ap = 0, this.pr = 0, final  List<Specialization> specializations = const [Specialization.none], final  List<Skill> inheritedSkills = const [], final  List<Skill> optionalSkills = const []}): _courage = courage,_intellect = intellect,_charisma = charisma,_dexterity = dexterity,_strength = strength,_specializations = specializations,_inheritedSkills = inheritedSkills,_optionalSkills = optionalSkills,super._();
  factory _Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

@override@JsonKey() final  String name;
 final  List<int> _courage;
@override@JsonKey() List<int> get courage {
  if (_courage is EqualUnmodifiableListView) return _courage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courage);
}

 final  List<int> _intellect;
@override@JsonKey() List<int> get intellect {
  if (_intellect is EqualUnmodifiableListView) return _intellect;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_intellect);
}

 final  List<int> _charisma;
@override@JsonKey() List<int> get charisma {
  if (_charisma is EqualUnmodifiableListView) return _charisma;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_charisma);
}

 final  List<int> _dexterity;
@override@JsonKey() List<int> get dexterity {
  if (_dexterity is EqualUnmodifiableListView) return _dexterity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dexterity);
}

 final  List<int> _strength;
@override@JsonKey() List<int> get strength {
  if (_strength is EqualUnmodifiableListView) return _strength;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strength);
}

@override@JsonKey() final  int attack;
@override@JsonKey() final  int parry;
@override@JsonKey() final  int hp;
@override@JsonKey() final  int ap;
@override@JsonKey() final  int pr;
 final  List<Specialization> _specializations;
@override@JsonKey() List<Specialization> get specializations {
  if (_specializations is EqualUnmodifiableListView) return _specializations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specializations);
}

 final  List<Skill> _inheritedSkills;
@override@JsonKey() List<Skill> get inheritedSkills {
  if (_inheritedSkills is EqualUnmodifiableListView) return _inheritedSkills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inheritedSkills);
}

 final  List<Skill> _optionalSkills;
@override@JsonKey() List<Skill> get optionalSkills {
  if (_optionalSkills is EqualUnmodifiableListView) return _optionalSkills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_optionalSkills);
}


/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobCopyWith<_Job> get copyWith => __$JobCopyWithImpl<_Job>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Job&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._courage, _courage)&&const DeepCollectionEquality().equals(other._intellect, _intellect)&&const DeepCollectionEquality().equals(other._charisma, _charisma)&&const DeepCollectionEquality().equals(other._dexterity, _dexterity)&&const DeepCollectionEquality().equals(other._strength, _strength)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.parry, parry) || other.parry == parry)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.ap, ap) || other.ap == ap)&&(identical(other.pr, pr) || other.pr == pr)&&const DeepCollectionEquality().equals(other._specializations, _specializations)&&const DeepCollectionEquality().equals(other._inheritedSkills, _inheritedSkills)&&const DeepCollectionEquality().equals(other._optionalSkills, _optionalSkills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_courage),const DeepCollectionEquality().hash(_intellect),const DeepCollectionEquality().hash(_charisma),const DeepCollectionEquality().hash(_dexterity),const DeepCollectionEquality().hash(_strength),attack,parry,hp,ap,pr,const DeepCollectionEquality().hash(_specializations),const DeepCollectionEquality().hash(_inheritedSkills),const DeepCollectionEquality().hash(_optionalSkills));

@override
String toString() {
  return 'Job(name: $name, courage: $courage, intellect: $intellect, charisma: $charisma, dexterity: $dexterity, strength: $strength, attack: $attack, parry: $parry, hp: $hp, ap: $ap, pr: $pr, specializations: $specializations, inheritedSkills: $inheritedSkills, optionalSkills: $optionalSkills)';
}


}

/// @nodoc
abstract mixin class _$JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$JobCopyWith(_Job value, $Res Function(_Job) _then) = __$JobCopyWithImpl;
@override @useResult
$Res call({
 String name, List<int> courage, List<int> intellect, List<int> charisma, List<int> dexterity, List<int> strength, int attack, int parry, int hp, int ap, int pr, List<Specialization> specializations, List<Skill> inheritedSkills, List<Skill> optionalSkills
});




}
/// @nodoc
class __$JobCopyWithImpl<$Res>
    implements _$JobCopyWith<$Res> {
  __$JobCopyWithImpl(this._self, this._then);

  final _Job _self;
  final $Res Function(_Job) _then;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? courage = null,Object? intellect = null,Object? charisma = null,Object? dexterity = null,Object? strength = null,Object? attack = null,Object? parry = null,Object? hp = null,Object? ap = null,Object? pr = null,Object? specializations = null,Object? inheritedSkills = null,Object? optionalSkills = null,}) {
  return _then(_Job(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,courage: null == courage ? _self._courage : courage // ignore: cast_nullable_to_non_nullable
as List<int>,intellect: null == intellect ? _self._intellect : intellect // ignore: cast_nullable_to_non_nullable
as List<int>,charisma: null == charisma ? _self._charisma : charisma // ignore: cast_nullable_to_non_nullable
as List<int>,dexterity: null == dexterity ? _self._dexterity : dexterity // ignore: cast_nullable_to_non_nullable
as List<int>,strength: null == strength ? _self._strength : strength // ignore: cast_nullable_to_non_nullable
as List<int>,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,parry: null == parry ? _self.parry : parry // ignore: cast_nullable_to_non_nullable
as int,hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as int,ap: null == ap ? _self.ap : ap // ignore: cast_nullable_to_non_nullable
as int,pr: null == pr ? _self.pr : pr // ignore: cast_nullable_to_non_nullable
as int,specializations: null == specializations ? _self._specializations : specializations // ignore: cast_nullable_to_non_nullable
as List<Specialization>,inheritedSkills: null == inheritedSkills ? _self._inheritedSkills : inheritedSkills // ignore: cast_nullable_to_non_nullable
as List<Skill>,optionalSkills: null == optionalSkills ? _self._optionalSkills : optionalSkills // ignore: cast_nullable_to_non_nullable
as List<Skill>,
  ));
}


}

// dart format on
