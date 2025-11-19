// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlayerCharacter {

 Creatures get creature; String get gender; Job get job; Specialization get specialization; int get fatePoints; int get level; int get currentLoad; int get maxLoad; int get intellect; int get charisma; int get dexterity; int get strength; int get physicalSpell; int get psychicSpell; int get engineer; int get maxNaturalPR; List<Skill> get skills; List<AddNaturalDamages> get addNaturalDamages; List<AddSpellDamages> get addSpellDamages; List<Item> get items; int? get modifyAttack; int? get modifyThrowAttack; int? get modifyParry; int? get modifyCourage; int? get modifyIntellect; int? get modifyCharisma; int? get modifyDexterity; int? get modifyStrength;
/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerCharacterCopyWith<PlayerCharacter> get copyWith => _$PlayerCharacterCopyWithImpl<PlayerCharacter>(this as PlayerCharacter, _$identity);

  /// Serializes this PlayerCharacter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerCharacter&&(identical(other.creature, creature) || other.creature == creature)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.job, job) || other.job == job)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.fatePoints, fatePoints) || other.fatePoints == fatePoints)&&(identical(other.level, level) || other.level == level)&&(identical(other.currentLoad, currentLoad) || other.currentLoad == currentLoad)&&(identical(other.maxLoad, maxLoad) || other.maxLoad == maxLoad)&&(identical(other.intellect, intellect) || other.intellect == intellect)&&(identical(other.charisma, charisma) || other.charisma == charisma)&&(identical(other.dexterity, dexterity) || other.dexterity == dexterity)&&(identical(other.strength, strength) || other.strength == strength)&&(identical(other.physicalSpell, physicalSpell) || other.physicalSpell == physicalSpell)&&(identical(other.psychicSpell, psychicSpell) || other.psychicSpell == psychicSpell)&&(identical(other.engineer, engineer) || other.engineer == engineer)&&(identical(other.maxNaturalPR, maxNaturalPR) || other.maxNaturalPR == maxNaturalPR)&&const DeepCollectionEquality().equals(other.skills, skills)&&const DeepCollectionEquality().equals(other.addNaturalDamages, addNaturalDamages)&&const DeepCollectionEquality().equals(other.addSpellDamages, addSpellDamages)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.modifyAttack, modifyAttack) || other.modifyAttack == modifyAttack)&&(identical(other.modifyThrowAttack, modifyThrowAttack) || other.modifyThrowAttack == modifyThrowAttack)&&(identical(other.modifyParry, modifyParry) || other.modifyParry == modifyParry)&&(identical(other.modifyCourage, modifyCourage) || other.modifyCourage == modifyCourage)&&(identical(other.modifyIntellect, modifyIntellect) || other.modifyIntellect == modifyIntellect)&&(identical(other.modifyCharisma, modifyCharisma) || other.modifyCharisma == modifyCharisma)&&(identical(other.modifyDexterity, modifyDexterity) || other.modifyDexterity == modifyDexterity)&&(identical(other.modifyStrength, modifyStrength) || other.modifyStrength == modifyStrength));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,creature,gender,job,specialization,fatePoints,level,currentLoad,maxLoad,intellect,charisma,dexterity,strength,physicalSpell,psychicSpell,engineer,maxNaturalPR,const DeepCollectionEquality().hash(skills),const DeepCollectionEquality().hash(addNaturalDamages),const DeepCollectionEquality().hash(addSpellDamages),const DeepCollectionEquality().hash(items),modifyAttack,modifyThrowAttack,modifyParry,modifyCourage,modifyIntellect,modifyCharisma,modifyDexterity,modifyStrength]);

@override
String toString() {
  return 'PlayerCharacter(creature: $creature, gender: $gender, job: $job, specialization: $specialization, fatePoints: $fatePoints, level: $level, currentLoad: $currentLoad, maxLoad: $maxLoad, intellect: $intellect, charisma: $charisma, dexterity: $dexterity, strength: $strength, physicalSpell: $physicalSpell, psychicSpell: $psychicSpell, engineer: $engineer, maxNaturalPR: $maxNaturalPR, skills: $skills, addNaturalDamages: $addNaturalDamages, addSpellDamages: $addSpellDamages, items: $items, modifyAttack: $modifyAttack, modifyThrowAttack: $modifyThrowAttack, modifyParry: $modifyParry, modifyCourage: $modifyCourage, modifyIntellect: $modifyIntellect, modifyCharisma: $modifyCharisma, modifyDexterity: $modifyDexterity, modifyStrength: $modifyStrength)';
}


}

/// @nodoc
abstract mixin class $PlayerCharacterCopyWith<$Res>  {
  factory $PlayerCharacterCopyWith(PlayerCharacter value, $Res Function(PlayerCharacter) _then) = _$PlayerCharacterCopyWithImpl;
@useResult
$Res call({
 Creatures creature, String gender, Job job, Specialization specialization, int fatePoints, int level, int currentLoad, int maxLoad, int intellect, int charisma, int dexterity, int strength, int physicalSpell, int psychicSpell, int engineer, int maxNaturalPR, List<Skill> skills, List<AddNaturalDamages> addNaturalDamages, List<AddSpellDamages> addSpellDamages, List<Item> items, int? modifyAttack, int? modifyThrowAttack, int? modifyParry, int? modifyCourage, int? modifyIntellect, int? modifyCharisma, int? modifyDexterity, int? modifyStrength
});


$CreaturesCopyWith<$Res> get creature;$JobCopyWith<$Res> get job;$SpecializationCopyWith<$Res> get specialization;

}
/// @nodoc
class _$PlayerCharacterCopyWithImpl<$Res>
    implements $PlayerCharacterCopyWith<$Res> {
  _$PlayerCharacterCopyWithImpl(this._self, this._then);

  final PlayerCharacter _self;
  final $Res Function(PlayerCharacter) _then;

/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? creature = null,Object? gender = null,Object? job = null,Object? specialization = null,Object? fatePoints = null,Object? level = null,Object? currentLoad = null,Object? maxLoad = null,Object? intellect = null,Object? charisma = null,Object? dexterity = null,Object? strength = null,Object? physicalSpell = null,Object? psychicSpell = null,Object? engineer = null,Object? maxNaturalPR = null,Object? skills = null,Object? addNaturalDamages = null,Object? addSpellDamages = null,Object? items = null,Object? modifyAttack = freezed,Object? modifyThrowAttack = freezed,Object? modifyParry = freezed,Object? modifyCourage = freezed,Object? modifyIntellect = freezed,Object? modifyCharisma = freezed,Object? modifyDexterity = freezed,Object? modifyStrength = freezed,}) {
  return _then(_self.copyWith(
creature: null == creature ? _self.creature : creature // ignore: cast_nullable_to_non_nullable
as Creatures,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job,specialization: null == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as Specialization,fatePoints: null == fatePoints ? _self.fatePoints : fatePoints // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,currentLoad: null == currentLoad ? _self.currentLoad : currentLoad // ignore: cast_nullable_to_non_nullable
as int,maxLoad: null == maxLoad ? _self.maxLoad : maxLoad // ignore: cast_nullable_to_non_nullable
as int,intellect: null == intellect ? _self.intellect : intellect // ignore: cast_nullable_to_non_nullable
as int,charisma: null == charisma ? _self.charisma : charisma // ignore: cast_nullable_to_non_nullable
as int,dexterity: null == dexterity ? _self.dexterity : dexterity // ignore: cast_nullable_to_non_nullable
as int,strength: null == strength ? _self.strength : strength // ignore: cast_nullable_to_non_nullable
as int,physicalSpell: null == physicalSpell ? _self.physicalSpell : physicalSpell // ignore: cast_nullable_to_non_nullable
as int,psychicSpell: null == psychicSpell ? _self.psychicSpell : psychicSpell // ignore: cast_nullable_to_non_nullable
as int,engineer: null == engineer ? _self.engineer : engineer // ignore: cast_nullable_to_non_nullable
as int,maxNaturalPR: null == maxNaturalPR ? _self.maxNaturalPR : maxNaturalPR // ignore: cast_nullable_to_non_nullable
as int,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<Skill>,addNaturalDamages: null == addNaturalDamages ? _self.addNaturalDamages : addNaturalDamages // ignore: cast_nullable_to_non_nullable
as List<AddNaturalDamages>,addSpellDamages: null == addSpellDamages ? _self.addSpellDamages : addSpellDamages // ignore: cast_nullable_to_non_nullable
as List<AddSpellDamages>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,modifyAttack: freezed == modifyAttack ? _self.modifyAttack : modifyAttack // ignore: cast_nullable_to_non_nullable
as int?,modifyThrowAttack: freezed == modifyThrowAttack ? _self.modifyThrowAttack : modifyThrowAttack // ignore: cast_nullable_to_non_nullable
as int?,modifyParry: freezed == modifyParry ? _self.modifyParry : modifyParry // ignore: cast_nullable_to_non_nullable
as int?,modifyCourage: freezed == modifyCourage ? _self.modifyCourage : modifyCourage // ignore: cast_nullable_to_non_nullable
as int?,modifyIntellect: freezed == modifyIntellect ? _self.modifyIntellect : modifyIntellect // ignore: cast_nullable_to_non_nullable
as int?,modifyCharisma: freezed == modifyCharisma ? _self.modifyCharisma : modifyCharisma // ignore: cast_nullable_to_non_nullable
as int?,modifyDexterity: freezed == modifyDexterity ? _self.modifyDexterity : modifyDexterity // ignore: cast_nullable_to_non_nullable
as int?,modifyStrength: freezed == modifyStrength ? _self.modifyStrength : modifyStrength // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreaturesCopyWith<$Res> get creature {
  
  return $CreaturesCopyWith<$Res>(_self.creature, (value) {
    return _then(_self.copyWith(creature: value));
  });
}/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobCopyWith<$Res> get job {
  
  return $JobCopyWith<$Res>(_self.job, (value) {
    return _then(_self.copyWith(job: value));
  });
}/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpecializationCopyWith<$Res> get specialization {
  
  return $SpecializationCopyWith<$Res>(_self.specialization, (value) {
    return _then(_self.copyWith(specialization: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlayerCharacter].
extension PlayerCharacterPatterns on PlayerCharacter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerCharacter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerCharacter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerCharacter value)  $default,){
final _that = this;
switch (_that) {
case _PlayerCharacter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerCharacter value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerCharacter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Creatures creature,  String gender,  Job job,  Specialization specialization,  int fatePoints,  int level,  int currentLoad,  int maxLoad,  int intellect,  int charisma,  int dexterity,  int strength,  int physicalSpell,  int psychicSpell,  int engineer,  int maxNaturalPR,  List<Skill> skills,  List<AddNaturalDamages> addNaturalDamages,  List<AddSpellDamages> addSpellDamages,  List<Item> items,  int? modifyAttack,  int? modifyThrowAttack,  int? modifyParry,  int? modifyCourage,  int? modifyIntellect,  int? modifyCharisma,  int? modifyDexterity,  int? modifyStrength)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerCharacter() when $default != null:
return $default(_that.creature,_that.gender,_that.job,_that.specialization,_that.fatePoints,_that.level,_that.currentLoad,_that.maxLoad,_that.intellect,_that.charisma,_that.dexterity,_that.strength,_that.physicalSpell,_that.psychicSpell,_that.engineer,_that.maxNaturalPR,_that.skills,_that.addNaturalDamages,_that.addSpellDamages,_that.items,_that.modifyAttack,_that.modifyThrowAttack,_that.modifyParry,_that.modifyCourage,_that.modifyIntellect,_that.modifyCharisma,_that.modifyDexterity,_that.modifyStrength);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Creatures creature,  String gender,  Job job,  Specialization specialization,  int fatePoints,  int level,  int currentLoad,  int maxLoad,  int intellect,  int charisma,  int dexterity,  int strength,  int physicalSpell,  int psychicSpell,  int engineer,  int maxNaturalPR,  List<Skill> skills,  List<AddNaturalDamages> addNaturalDamages,  List<AddSpellDamages> addSpellDamages,  List<Item> items,  int? modifyAttack,  int? modifyThrowAttack,  int? modifyParry,  int? modifyCourage,  int? modifyIntellect,  int? modifyCharisma,  int? modifyDexterity,  int? modifyStrength)  $default,) {final _that = this;
switch (_that) {
case _PlayerCharacter():
return $default(_that.creature,_that.gender,_that.job,_that.specialization,_that.fatePoints,_that.level,_that.currentLoad,_that.maxLoad,_that.intellect,_that.charisma,_that.dexterity,_that.strength,_that.physicalSpell,_that.psychicSpell,_that.engineer,_that.maxNaturalPR,_that.skills,_that.addNaturalDamages,_that.addSpellDamages,_that.items,_that.modifyAttack,_that.modifyThrowAttack,_that.modifyParry,_that.modifyCourage,_that.modifyIntellect,_that.modifyCharisma,_that.modifyDexterity,_that.modifyStrength);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Creatures creature,  String gender,  Job job,  Specialization specialization,  int fatePoints,  int level,  int currentLoad,  int maxLoad,  int intellect,  int charisma,  int dexterity,  int strength,  int physicalSpell,  int psychicSpell,  int engineer,  int maxNaturalPR,  List<Skill> skills,  List<AddNaturalDamages> addNaturalDamages,  List<AddSpellDamages> addSpellDamages,  List<Item> items,  int? modifyAttack,  int? modifyThrowAttack,  int? modifyParry,  int? modifyCourage,  int? modifyIntellect,  int? modifyCharisma,  int? modifyDexterity,  int? modifyStrength)?  $default,) {final _that = this;
switch (_that) {
case _PlayerCharacter() when $default != null:
return $default(_that.creature,_that.gender,_that.job,_that.specialization,_that.fatePoints,_that.level,_that.currentLoad,_that.maxLoad,_that.intellect,_that.charisma,_that.dexterity,_that.strength,_that.physicalSpell,_that.psychicSpell,_that.engineer,_that.maxNaturalPR,_that.skills,_that.addNaturalDamages,_that.addSpellDamages,_that.items,_that.modifyAttack,_that.modifyThrowAttack,_that.modifyParry,_that.modifyCourage,_that.modifyIntellect,_that.modifyCharisma,_that.modifyDexterity,_that.modifyStrength);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlayerCharacter extends PlayerCharacter {
  const _PlayerCharacter({this.creature = const Creatures(name: '', people: People.human, healthPoints: 0, astralPoints: 0, experience: 0, attack: 0, throwAttack: 0, parry: 0, evade: 0, spellResistance: 0, courage: 0, naturalPR: 0, magicPR: 0, weapons: [], armors: [], actualHealthPoints: 0, actualAstralPoints: 0), this.gender = '', this.job = Job.none, this.specialization = Specialization.none, this.fatePoints = 0, this.level = 1, this.currentLoad = 0, this.maxLoad = 0, this.intellect = 0, this.charisma = 0, this.dexterity = 0, this.strength = 0, this.physicalSpell = 0, this.psychicSpell = 0, this.engineer = 0, this.maxNaturalPR = 0, final  List<Skill> skills = const [], final  List<AddNaturalDamages> addNaturalDamages = const [], final  List<AddSpellDamages> addSpellDamages = const [], final  List<Item> items = const [], this.modifyAttack, this.modifyThrowAttack, this.modifyParry, this.modifyCourage, this.modifyIntellect, this.modifyCharisma, this.modifyDexterity, this.modifyStrength}): _skills = skills,_addNaturalDamages = addNaturalDamages,_addSpellDamages = addSpellDamages,_items = items,super._();
  factory _PlayerCharacter.fromJson(Map<String, dynamic> json) => _$PlayerCharacterFromJson(json);

@override@JsonKey() final  Creatures creature;
@override@JsonKey() final  String gender;
@override@JsonKey() final  Job job;
@override@JsonKey() final  Specialization specialization;
@override@JsonKey() final  int fatePoints;
@override@JsonKey() final  int level;
@override@JsonKey() final  int currentLoad;
@override@JsonKey() final  int maxLoad;
@override@JsonKey() final  int intellect;
@override@JsonKey() final  int charisma;
@override@JsonKey() final  int dexterity;
@override@JsonKey() final  int strength;
@override@JsonKey() final  int physicalSpell;
@override@JsonKey() final  int psychicSpell;
@override@JsonKey() final  int engineer;
@override@JsonKey() final  int maxNaturalPR;
 final  List<Skill> _skills;
@override@JsonKey() List<Skill> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}

 final  List<AddNaturalDamages> _addNaturalDamages;
@override@JsonKey() List<AddNaturalDamages> get addNaturalDamages {
  if (_addNaturalDamages is EqualUnmodifiableListView) return _addNaturalDamages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addNaturalDamages);
}

 final  List<AddSpellDamages> _addSpellDamages;
@override@JsonKey() List<AddSpellDamages> get addSpellDamages {
  if (_addSpellDamages is EqualUnmodifiableListView) return _addSpellDamages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addSpellDamages);
}

 final  List<Item> _items;
@override@JsonKey() List<Item> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int? modifyAttack;
@override final  int? modifyThrowAttack;
@override final  int? modifyParry;
@override final  int? modifyCourage;
@override final  int? modifyIntellect;
@override final  int? modifyCharisma;
@override final  int? modifyDexterity;
@override final  int? modifyStrength;

/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerCharacterCopyWith<_PlayerCharacter> get copyWith => __$PlayerCharacterCopyWithImpl<_PlayerCharacter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerCharacterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerCharacter&&(identical(other.creature, creature) || other.creature == creature)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.job, job) || other.job == job)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.fatePoints, fatePoints) || other.fatePoints == fatePoints)&&(identical(other.level, level) || other.level == level)&&(identical(other.currentLoad, currentLoad) || other.currentLoad == currentLoad)&&(identical(other.maxLoad, maxLoad) || other.maxLoad == maxLoad)&&(identical(other.intellect, intellect) || other.intellect == intellect)&&(identical(other.charisma, charisma) || other.charisma == charisma)&&(identical(other.dexterity, dexterity) || other.dexterity == dexterity)&&(identical(other.strength, strength) || other.strength == strength)&&(identical(other.physicalSpell, physicalSpell) || other.physicalSpell == physicalSpell)&&(identical(other.psychicSpell, psychicSpell) || other.psychicSpell == psychicSpell)&&(identical(other.engineer, engineer) || other.engineer == engineer)&&(identical(other.maxNaturalPR, maxNaturalPR) || other.maxNaturalPR == maxNaturalPR)&&const DeepCollectionEquality().equals(other._skills, _skills)&&const DeepCollectionEquality().equals(other._addNaturalDamages, _addNaturalDamages)&&const DeepCollectionEquality().equals(other._addSpellDamages, _addSpellDamages)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.modifyAttack, modifyAttack) || other.modifyAttack == modifyAttack)&&(identical(other.modifyThrowAttack, modifyThrowAttack) || other.modifyThrowAttack == modifyThrowAttack)&&(identical(other.modifyParry, modifyParry) || other.modifyParry == modifyParry)&&(identical(other.modifyCourage, modifyCourage) || other.modifyCourage == modifyCourage)&&(identical(other.modifyIntellect, modifyIntellect) || other.modifyIntellect == modifyIntellect)&&(identical(other.modifyCharisma, modifyCharisma) || other.modifyCharisma == modifyCharisma)&&(identical(other.modifyDexterity, modifyDexterity) || other.modifyDexterity == modifyDexterity)&&(identical(other.modifyStrength, modifyStrength) || other.modifyStrength == modifyStrength));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,creature,gender,job,specialization,fatePoints,level,currentLoad,maxLoad,intellect,charisma,dexterity,strength,physicalSpell,psychicSpell,engineer,maxNaturalPR,const DeepCollectionEquality().hash(_skills),const DeepCollectionEquality().hash(_addNaturalDamages),const DeepCollectionEquality().hash(_addSpellDamages),const DeepCollectionEquality().hash(_items),modifyAttack,modifyThrowAttack,modifyParry,modifyCourage,modifyIntellect,modifyCharisma,modifyDexterity,modifyStrength]);

@override
String toString() {
  return 'PlayerCharacter(creature: $creature, gender: $gender, job: $job, specialization: $specialization, fatePoints: $fatePoints, level: $level, currentLoad: $currentLoad, maxLoad: $maxLoad, intellect: $intellect, charisma: $charisma, dexterity: $dexterity, strength: $strength, physicalSpell: $physicalSpell, psychicSpell: $psychicSpell, engineer: $engineer, maxNaturalPR: $maxNaturalPR, skills: $skills, addNaturalDamages: $addNaturalDamages, addSpellDamages: $addSpellDamages, items: $items, modifyAttack: $modifyAttack, modifyThrowAttack: $modifyThrowAttack, modifyParry: $modifyParry, modifyCourage: $modifyCourage, modifyIntellect: $modifyIntellect, modifyCharisma: $modifyCharisma, modifyDexterity: $modifyDexterity, modifyStrength: $modifyStrength)';
}


}

/// @nodoc
abstract mixin class _$PlayerCharacterCopyWith<$Res> implements $PlayerCharacterCopyWith<$Res> {
  factory _$PlayerCharacterCopyWith(_PlayerCharacter value, $Res Function(_PlayerCharacter) _then) = __$PlayerCharacterCopyWithImpl;
@override @useResult
$Res call({
 Creatures creature, String gender, Job job, Specialization specialization, int fatePoints, int level, int currentLoad, int maxLoad, int intellect, int charisma, int dexterity, int strength, int physicalSpell, int psychicSpell, int engineer, int maxNaturalPR, List<Skill> skills, List<AddNaturalDamages> addNaturalDamages, List<AddSpellDamages> addSpellDamages, List<Item> items, int? modifyAttack, int? modifyThrowAttack, int? modifyParry, int? modifyCourage, int? modifyIntellect, int? modifyCharisma, int? modifyDexterity, int? modifyStrength
});


@override $CreaturesCopyWith<$Res> get creature;@override $JobCopyWith<$Res> get job;@override $SpecializationCopyWith<$Res> get specialization;

}
/// @nodoc
class __$PlayerCharacterCopyWithImpl<$Res>
    implements _$PlayerCharacterCopyWith<$Res> {
  __$PlayerCharacterCopyWithImpl(this._self, this._then);

  final _PlayerCharacter _self;
  final $Res Function(_PlayerCharacter) _then;

/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? creature = null,Object? gender = null,Object? job = null,Object? specialization = null,Object? fatePoints = null,Object? level = null,Object? currentLoad = null,Object? maxLoad = null,Object? intellect = null,Object? charisma = null,Object? dexterity = null,Object? strength = null,Object? physicalSpell = null,Object? psychicSpell = null,Object? engineer = null,Object? maxNaturalPR = null,Object? skills = null,Object? addNaturalDamages = null,Object? addSpellDamages = null,Object? items = null,Object? modifyAttack = freezed,Object? modifyThrowAttack = freezed,Object? modifyParry = freezed,Object? modifyCourage = freezed,Object? modifyIntellect = freezed,Object? modifyCharisma = freezed,Object? modifyDexterity = freezed,Object? modifyStrength = freezed,}) {
  return _then(_PlayerCharacter(
creature: null == creature ? _self.creature : creature // ignore: cast_nullable_to_non_nullable
as Creatures,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job,specialization: null == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as Specialization,fatePoints: null == fatePoints ? _self.fatePoints : fatePoints // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,currentLoad: null == currentLoad ? _self.currentLoad : currentLoad // ignore: cast_nullable_to_non_nullable
as int,maxLoad: null == maxLoad ? _self.maxLoad : maxLoad // ignore: cast_nullable_to_non_nullable
as int,intellect: null == intellect ? _self.intellect : intellect // ignore: cast_nullable_to_non_nullable
as int,charisma: null == charisma ? _self.charisma : charisma // ignore: cast_nullable_to_non_nullable
as int,dexterity: null == dexterity ? _self.dexterity : dexterity // ignore: cast_nullable_to_non_nullable
as int,strength: null == strength ? _self.strength : strength // ignore: cast_nullable_to_non_nullable
as int,physicalSpell: null == physicalSpell ? _self.physicalSpell : physicalSpell // ignore: cast_nullable_to_non_nullable
as int,psychicSpell: null == psychicSpell ? _self.psychicSpell : psychicSpell // ignore: cast_nullable_to_non_nullable
as int,engineer: null == engineer ? _self.engineer : engineer // ignore: cast_nullable_to_non_nullable
as int,maxNaturalPR: null == maxNaturalPR ? _self.maxNaturalPR : maxNaturalPR // ignore: cast_nullable_to_non_nullable
as int,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<Skill>,addNaturalDamages: null == addNaturalDamages ? _self._addNaturalDamages : addNaturalDamages // ignore: cast_nullable_to_non_nullable
as List<AddNaturalDamages>,addSpellDamages: null == addSpellDamages ? _self._addSpellDamages : addSpellDamages // ignore: cast_nullable_to_non_nullable
as List<AddSpellDamages>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,modifyAttack: freezed == modifyAttack ? _self.modifyAttack : modifyAttack // ignore: cast_nullable_to_non_nullable
as int?,modifyThrowAttack: freezed == modifyThrowAttack ? _self.modifyThrowAttack : modifyThrowAttack // ignore: cast_nullable_to_non_nullable
as int?,modifyParry: freezed == modifyParry ? _self.modifyParry : modifyParry // ignore: cast_nullable_to_non_nullable
as int?,modifyCourage: freezed == modifyCourage ? _self.modifyCourage : modifyCourage // ignore: cast_nullable_to_non_nullable
as int?,modifyIntellect: freezed == modifyIntellect ? _self.modifyIntellect : modifyIntellect // ignore: cast_nullable_to_non_nullable
as int?,modifyCharisma: freezed == modifyCharisma ? _self.modifyCharisma : modifyCharisma // ignore: cast_nullable_to_non_nullable
as int?,modifyDexterity: freezed == modifyDexterity ? _self.modifyDexterity : modifyDexterity // ignore: cast_nullable_to_non_nullable
as int?,modifyStrength: freezed == modifyStrength ? _self.modifyStrength : modifyStrength // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreaturesCopyWith<$Res> get creature {
  
  return $CreaturesCopyWith<$Res>(_self.creature, (value) {
    return _then(_self.copyWith(creature: value));
  });
}/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobCopyWith<$Res> get job {
  
  return $JobCopyWith<$Res>(_self.job, (value) {
    return _then(_self.copyWith(job: value));
  });
}/// Create a copy of PlayerCharacter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpecializationCopyWith<$Res> get specialization {
  
  return $SpecializationCopyWith<$Res>(_self.specialization, (value) {
    return _then(_self.copyWith(specialization: value));
  });
}
}

// dart format on
