// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creatures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Creatures {

 String get name; People get people; int get healthPoints; int get astralPoints; int get experience; int get attack; int get throwAttack; int get parry; int get evade; int get spellResistance; int get courage; int get naturalPR; int get magicPR; List<String> get weapons; List<String> get armors; int get actualHealthPoints; int get actualAstralPoints;
/// Create a copy of Creatures
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreaturesCopyWith<Creatures> get copyWith => _$CreaturesCopyWithImpl<Creatures>(this as Creatures, _$identity);

  /// Serializes this Creatures to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Creatures&&(identical(other.name, name) || other.name == name)&&(identical(other.people, people) || other.people == people)&&(identical(other.healthPoints, healthPoints) || other.healthPoints == healthPoints)&&(identical(other.astralPoints, astralPoints) || other.astralPoints == astralPoints)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.throwAttack, throwAttack) || other.throwAttack == throwAttack)&&(identical(other.parry, parry) || other.parry == parry)&&(identical(other.evade, evade) || other.evade == evade)&&(identical(other.spellResistance, spellResistance) || other.spellResistance == spellResistance)&&(identical(other.courage, courage) || other.courage == courage)&&(identical(other.naturalPR, naturalPR) || other.naturalPR == naturalPR)&&(identical(other.magicPR, magicPR) || other.magicPR == magicPR)&&const DeepCollectionEquality().equals(other.weapons, weapons)&&const DeepCollectionEquality().equals(other.armors, armors)&&(identical(other.actualHealthPoints, actualHealthPoints) || other.actualHealthPoints == actualHealthPoints)&&(identical(other.actualAstralPoints, actualAstralPoints) || other.actualAstralPoints == actualAstralPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,people,healthPoints,astralPoints,experience,attack,throwAttack,parry,evade,spellResistance,courage,naturalPR,magicPR,const DeepCollectionEquality().hash(weapons),const DeepCollectionEquality().hash(armors),actualHealthPoints,actualAstralPoints);

@override
String toString() {
  return 'Creatures(name: $name, people: $people, healthPoints: $healthPoints, astralPoints: $astralPoints, experience: $experience, attack: $attack, throwAttack: $throwAttack, parry: $parry, evade: $evade, spellResistance: $spellResistance, courage: $courage, naturalPR: $naturalPR, magicPR: $magicPR, weapons: $weapons, armors: $armors, actualHealthPoints: $actualHealthPoints, actualAstralPoints: $actualAstralPoints)';
}


}

/// @nodoc
abstract mixin class $CreaturesCopyWith<$Res>  {
  factory $CreaturesCopyWith(Creatures value, $Res Function(Creatures) _then) = _$CreaturesCopyWithImpl;
@useResult
$Res call({
 String name, People people, int healthPoints, int astralPoints, int experience, int attack, int throwAttack, int parry, int evade, int spellResistance, int courage, int naturalPR, int magicPR, List<String> weapons, List<String> armors, int actualHealthPoints, int actualAstralPoints
});


$PeopleCopyWith<$Res> get people;

}
/// @nodoc
class _$CreaturesCopyWithImpl<$Res>
    implements $CreaturesCopyWith<$Res> {
  _$CreaturesCopyWithImpl(this._self, this._then);

  final Creatures _self;
  final $Res Function(Creatures) _then;

/// Create a copy of Creatures
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? people = null,Object? healthPoints = null,Object? astralPoints = null,Object? experience = null,Object? attack = null,Object? throwAttack = null,Object? parry = null,Object? evade = null,Object? spellResistance = null,Object? courage = null,Object? naturalPR = null,Object? magicPR = null,Object? weapons = null,Object? armors = null,Object? actualHealthPoints = null,Object? actualAstralPoints = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,people: null == people ? _self.people : people // ignore: cast_nullable_to_non_nullable
as People,healthPoints: null == healthPoints ? _self.healthPoints : healthPoints // ignore: cast_nullable_to_non_nullable
as int,astralPoints: null == astralPoints ? _self.astralPoints : astralPoints // ignore: cast_nullable_to_non_nullable
as int,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as int,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,throwAttack: null == throwAttack ? _self.throwAttack : throwAttack // ignore: cast_nullable_to_non_nullable
as int,parry: null == parry ? _self.parry : parry // ignore: cast_nullable_to_non_nullable
as int,evade: null == evade ? _self.evade : evade // ignore: cast_nullable_to_non_nullable
as int,spellResistance: null == spellResistance ? _self.spellResistance : spellResistance // ignore: cast_nullable_to_non_nullable
as int,courage: null == courage ? _self.courage : courage // ignore: cast_nullable_to_non_nullable
as int,naturalPR: null == naturalPR ? _self.naturalPR : naturalPR // ignore: cast_nullable_to_non_nullable
as int,magicPR: null == magicPR ? _self.magicPR : magicPR // ignore: cast_nullable_to_non_nullable
as int,weapons: null == weapons ? _self.weapons : weapons // ignore: cast_nullable_to_non_nullable
as List<String>,armors: null == armors ? _self.armors : armors // ignore: cast_nullable_to_non_nullable
as List<String>,actualHealthPoints: null == actualHealthPoints ? _self.actualHealthPoints : actualHealthPoints // ignore: cast_nullable_to_non_nullable
as int,actualAstralPoints: null == actualAstralPoints ? _self.actualAstralPoints : actualAstralPoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Creatures
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeopleCopyWith<$Res> get people {
  
  return $PeopleCopyWith<$Res>(_self.people, (value) {
    return _then(_self.copyWith(people: value));
  });
}
}


/// Adds pattern-matching-related methods to [Creatures].
extension CreaturesPatterns on Creatures {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Creatures value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Creatures() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Creatures value)  $default,){
final _that = this;
switch (_that) {
case _Creatures():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Creatures value)?  $default,){
final _that = this;
switch (_that) {
case _Creatures() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  People people,  int healthPoints,  int astralPoints,  int experience,  int attack,  int throwAttack,  int parry,  int evade,  int spellResistance,  int courage,  int naturalPR,  int magicPR,  List<String> weapons,  List<String> armors,  int actualHealthPoints,  int actualAstralPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Creatures() when $default != null:
return $default(_that.name,_that.people,_that.healthPoints,_that.astralPoints,_that.experience,_that.attack,_that.throwAttack,_that.parry,_that.evade,_that.spellResistance,_that.courage,_that.naturalPR,_that.magicPR,_that.weapons,_that.armors,_that.actualHealthPoints,_that.actualAstralPoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  People people,  int healthPoints,  int astralPoints,  int experience,  int attack,  int throwAttack,  int parry,  int evade,  int spellResistance,  int courage,  int naturalPR,  int magicPR,  List<String> weapons,  List<String> armors,  int actualHealthPoints,  int actualAstralPoints)  $default,) {final _that = this;
switch (_that) {
case _Creatures():
return $default(_that.name,_that.people,_that.healthPoints,_that.astralPoints,_that.experience,_that.attack,_that.throwAttack,_that.parry,_that.evade,_that.spellResistance,_that.courage,_that.naturalPR,_that.magicPR,_that.weapons,_that.armors,_that.actualHealthPoints,_that.actualAstralPoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  People people,  int healthPoints,  int astralPoints,  int experience,  int attack,  int throwAttack,  int parry,  int evade,  int spellResistance,  int courage,  int naturalPR,  int magicPR,  List<String> weapons,  List<String> armors,  int actualHealthPoints,  int actualAstralPoints)?  $default,) {final _that = this;
switch (_that) {
case _Creatures() when $default != null:
return $default(_that.name,_that.people,_that.healthPoints,_that.astralPoints,_that.experience,_that.attack,_that.throwAttack,_that.parry,_that.evade,_that.spellResistance,_that.courage,_that.naturalPR,_that.magicPR,_that.weapons,_that.armors,_that.actualHealthPoints,_that.actualAstralPoints);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Creatures extends Creatures {
  const _Creatures({this.name = '', this.people = People.monster, this.healthPoints = 0, this.astralPoints = 0, this.experience = 0, this.attack = 0, this.throwAttack = 0, this.parry = 0, this.evade = 0, this.spellResistance = 0, this.courage = 0, this.naturalPR = 0, this.magicPR = 0, final  List<String> weapons = const <String>[], final  List<String> armors = const <String>[], this.actualHealthPoints = 0, this.actualAstralPoints = 0}): _weapons = weapons,_armors = armors,super._();
  factory _Creatures.fromJson(Map<String, dynamic> json) => _$CreaturesFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  People people;
@override@JsonKey() final  int healthPoints;
@override@JsonKey() final  int astralPoints;
@override@JsonKey() final  int experience;
@override@JsonKey() final  int attack;
@override@JsonKey() final  int throwAttack;
@override@JsonKey() final  int parry;
@override@JsonKey() final  int evade;
@override@JsonKey() final  int spellResistance;
@override@JsonKey() final  int courage;
@override@JsonKey() final  int naturalPR;
@override@JsonKey() final  int magicPR;
 final  List<String> _weapons;
@override@JsonKey() List<String> get weapons {
  if (_weapons is EqualUnmodifiableListView) return _weapons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weapons);
}

 final  List<String> _armors;
@override@JsonKey() List<String> get armors {
  if (_armors is EqualUnmodifiableListView) return _armors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_armors);
}

@override@JsonKey() final  int actualHealthPoints;
@override@JsonKey() final  int actualAstralPoints;

/// Create a copy of Creatures
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreaturesCopyWith<_Creatures> get copyWith => __$CreaturesCopyWithImpl<_Creatures>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreaturesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Creatures&&(identical(other.name, name) || other.name == name)&&(identical(other.people, people) || other.people == people)&&(identical(other.healthPoints, healthPoints) || other.healthPoints == healthPoints)&&(identical(other.astralPoints, astralPoints) || other.astralPoints == astralPoints)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.throwAttack, throwAttack) || other.throwAttack == throwAttack)&&(identical(other.parry, parry) || other.parry == parry)&&(identical(other.evade, evade) || other.evade == evade)&&(identical(other.spellResistance, spellResistance) || other.spellResistance == spellResistance)&&(identical(other.courage, courage) || other.courage == courage)&&(identical(other.naturalPR, naturalPR) || other.naturalPR == naturalPR)&&(identical(other.magicPR, magicPR) || other.magicPR == magicPR)&&const DeepCollectionEquality().equals(other._weapons, _weapons)&&const DeepCollectionEquality().equals(other._armors, _armors)&&(identical(other.actualHealthPoints, actualHealthPoints) || other.actualHealthPoints == actualHealthPoints)&&(identical(other.actualAstralPoints, actualAstralPoints) || other.actualAstralPoints == actualAstralPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,people,healthPoints,astralPoints,experience,attack,throwAttack,parry,evade,spellResistance,courage,naturalPR,magicPR,const DeepCollectionEquality().hash(_weapons),const DeepCollectionEquality().hash(_armors),actualHealthPoints,actualAstralPoints);

@override
String toString() {
  return 'Creatures(name: $name, people: $people, healthPoints: $healthPoints, astralPoints: $astralPoints, experience: $experience, attack: $attack, throwAttack: $throwAttack, parry: $parry, evade: $evade, spellResistance: $spellResistance, courage: $courage, naturalPR: $naturalPR, magicPR: $magicPR, weapons: $weapons, armors: $armors, actualHealthPoints: $actualHealthPoints, actualAstralPoints: $actualAstralPoints)';
}


}

/// @nodoc
abstract mixin class _$CreaturesCopyWith<$Res> implements $CreaturesCopyWith<$Res> {
  factory _$CreaturesCopyWith(_Creatures value, $Res Function(_Creatures) _then) = __$CreaturesCopyWithImpl;
@override @useResult
$Res call({
 String name, People people, int healthPoints, int astralPoints, int experience, int attack, int throwAttack, int parry, int evade, int spellResistance, int courage, int naturalPR, int magicPR, List<String> weapons, List<String> armors, int actualHealthPoints, int actualAstralPoints
});


@override $PeopleCopyWith<$Res> get people;

}
/// @nodoc
class __$CreaturesCopyWithImpl<$Res>
    implements _$CreaturesCopyWith<$Res> {
  __$CreaturesCopyWithImpl(this._self, this._then);

  final _Creatures _self;
  final $Res Function(_Creatures) _then;

/// Create a copy of Creatures
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? people = null,Object? healthPoints = null,Object? astralPoints = null,Object? experience = null,Object? attack = null,Object? throwAttack = null,Object? parry = null,Object? evade = null,Object? spellResistance = null,Object? courage = null,Object? naturalPR = null,Object? magicPR = null,Object? weapons = null,Object? armors = null,Object? actualHealthPoints = null,Object? actualAstralPoints = null,}) {
  return _then(_Creatures(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,people: null == people ? _self.people : people // ignore: cast_nullable_to_non_nullable
as People,healthPoints: null == healthPoints ? _self.healthPoints : healthPoints // ignore: cast_nullable_to_non_nullable
as int,astralPoints: null == astralPoints ? _self.astralPoints : astralPoints // ignore: cast_nullable_to_non_nullable
as int,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as int,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,throwAttack: null == throwAttack ? _self.throwAttack : throwAttack // ignore: cast_nullable_to_non_nullable
as int,parry: null == parry ? _self.parry : parry // ignore: cast_nullable_to_non_nullable
as int,evade: null == evade ? _self.evade : evade // ignore: cast_nullable_to_non_nullable
as int,spellResistance: null == spellResistance ? _self.spellResistance : spellResistance // ignore: cast_nullable_to_non_nullable
as int,courage: null == courage ? _self.courage : courage // ignore: cast_nullable_to_non_nullable
as int,naturalPR: null == naturalPR ? _self.naturalPR : naturalPR // ignore: cast_nullable_to_non_nullable
as int,magicPR: null == magicPR ? _self.magicPR : magicPR // ignore: cast_nullable_to_non_nullable
as int,weapons: null == weapons ? _self._weapons : weapons // ignore: cast_nullable_to_non_nullable
as List<String>,armors: null == armors ? _self._armors : armors // ignore: cast_nullable_to_non_nullable
as List<String>,actualHealthPoints: null == actualHealthPoints ? _self.actualHealthPoints : actualHealthPoints // ignore: cast_nullable_to_non_nullable
as int,actualAstralPoints: null == actualAstralPoints ? _self.actualAstralPoints : actualAstralPoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Creatures
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeopleCopyWith<$Res> get people {
  
  return $PeopleCopyWith<$Res>(_self.people, (value) {
    return _then(_self.copyWith(people: value));
  });
}
}

// dart format on
