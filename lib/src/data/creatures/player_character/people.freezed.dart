// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$People {

 String get name; List<int> get courage; List<int> get intellect; List<int> get charisma; List<int> get dexterity; List<int> get strength; int get attack; int get parry; int get hp; int get pr; int get load; List<Job> get jobs; List<Skill> get birthSkills; List<Skill> get optionalSkills;
/// Create a copy of People
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeopleCopyWith<People> get copyWith => _$PeopleCopyWithImpl<People>(this as People, _$identity);

  /// Serializes this People to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is People&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.courage, courage)&&const DeepCollectionEquality().equals(other.intellect, intellect)&&const DeepCollectionEquality().equals(other.charisma, charisma)&&const DeepCollectionEquality().equals(other.dexterity, dexterity)&&const DeepCollectionEquality().equals(other.strength, strength)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.parry, parry) || other.parry == parry)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.pr, pr) || other.pr == pr)&&(identical(other.load, load) || other.load == load)&&const DeepCollectionEquality().equals(other.jobs, jobs)&&const DeepCollectionEquality().equals(other.birthSkills, birthSkills)&&const DeepCollectionEquality().equals(other.optionalSkills, optionalSkills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(courage),const DeepCollectionEquality().hash(intellect),const DeepCollectionEquality().hash(charisma),const DeepCollectionEquality().hash(dexterity),const DeepCollectionEquality().hash(strength),attack,parry,hp,pr,load,const DeepCollectionEquality().hash(jobs),const DeepCollectionEquality().hash(birthSkills),const DeepCollectionEquality().hash(optionalSkills));

@override
String toString() {
  return 'People(name: $name, courage: $courage, intellect: $intellect, charisma: $charisma, dexterity: $dexterity, strength: $strength, attack: $attack, parry: $parry, hp: $hp, pr: $pr, load: $load, jobs: $jobs, birthSkills: $birthSkills, optionalSkills: $optionalSkills)';
}


}

/// @nodoc
abstract mixin class $PeopleCopyWith<$Res>  {
  factory $PeopleCopyWith(People value, $Res Function(People) _then) = _$PeopleCopyWithImpl;
@useResult
$Res call({
 String name, List<int> courage, List<int> intellect, List<int> charisma, List<int> dexterity, List<int> strength, int attack, int parry, int hp, int pr, int load, List<Job> jobs, List<Skill> birthSkills, List<Skill> optionalSkills
});




}
/// @nodoc
class _$PeopleCopyWithImpl<$Res>
    implements $PeopleCopyWith<$Res> {
  _$PeopleCopyWithImpl(this._self, this._then);

  final People _self;
  final $Res Function(People) _then;

/// Create a copy of People
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? courage = null,Object? intellect = null,Object? charisma = null,Object? dexterity = null,Object? strength = null,Object? attack = null,Object? parry = null,Object? hp = null,Object? pr = null,Object? load = null,Object? jobs = null,Object? birthSkills = null,Object? optionalSkills = null,}) {
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
as int,pr: null == pr ? _self.pr : pr // ignore: cast_nullable_to_non_nullable
as int,load: null == load ? _self.load : load // ignore: cast_nullable_to_non_nullable
as int,jobs: null == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Job>,birthSkills: null == birthSkills ? _self.birthSkills : birthSkills // ignore: cast_nullable_to_non_nullable
as List<Skill>,optionalSkills: null == optionalSkills ? _self.optionalSkills : optionalSkills // ignore: cast_nullable_to_non_nullable
as List<Skill>,
  ));
}

}


/// Adds pattern-matching-related methods to [People].
extension PeoplePatterns on People {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _People value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _People() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _People value)  $default,){
final _that = this;
switch (_that) {
case _People():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _People value)?  $default,){
final _that = this;
switch (_that) {
case _People() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<int> courage,  List<int> intellect,  List<int> charisma,  List<int> dexterity,  List<int> strength,  int attack,  int parry,  int hp,  int pr,  int load,  List<Job> jobs,  List<Skill> birthSkills,  List<Skill> optionalSkills)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _People() when $default != null:
return $default(_that.name,_that.courage,_that.intellect,_that.charisma,_that.dexterity,_that.strength,_that.attack,_that.parry,_that.hp,_that.pr,_that.load,_that.jobs,_that.birthSkills,_that.optionalSkills);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<int> courage,  List<int> intellect,  List<int> charisma,  List<int> dexterity,  List<int> strength,  int attack,  int parry,  int hp,  int pr,  int load,  List<Job> jobs,  List<Skill> birthSkills,  List<Skill> optionalSkills)  $default,) {final _that = this;
switch (_that) {
case _People():
return $default(_that.name,_that.courage,_that.intellect,_that.charisma,_that.dexterity,_that.strength,_that.attack,_that.parry,_that.hp,_that.pr,_that.load,_that.jobs,_that.birthSkills,_that.optionalSkills);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<int> courage,  List<int> intellect,  List<int> charisma,  List<int> dexterity,  List<int> strength,  int attack,  int parry,  int hp,  int pr,  int load,  List<Job> jobs,  List<Skill> birthSkills,  List<Skill> optionalSkills)?  $default,) {final _that = this;
switch (_that) {
case _People() when $default != null:
return $default(_that.name,_that.courage,_that.intellect,_that.charisma,_that.dexterity,_that.strength,_that.attack,_that.parry,_that.hp,_that.pr,_that.load,_that.jobs,_that.birthSkills,_that.optionalSkills);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _People extends People {
  const _People({this.name = 'Monster', final  List<int> courage = const [8, 20], final  List<int> intellect = const [8, 20], final  List<int> charisma = const [8, 20], final  List<int> dexterity = const [8, 20], final  List<int> strength = const [8, 20], this.attack = 8, this.parry = 10, this.hp = 30, this.pr = 0, this.load = 0, final  List<Job> jobs = Job.jobs, final  List<Skill> birthSkills = const [], final  List<Skill> optionalSkills = Skill.basics}): _courage = courage,_intellect = intellect,_charisma = charisma,_dexterity = dexterity,_strength = strength,_jobs = jobs,_birthSkills = birthSkills,_optionalSkills = optionalSkills,super._();
  factory _People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);

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
@override@JsonKey() final  int pr;
@override@JsonKey() final  int load;
 final  List<Job> _jobs;
@override@JsonKey() List<Job> get jobs {
  if (_jobs is EqualUnmodifiableListView) return _jobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jobs);
}

 final  List<Skill> _birthSkills;
@override@JsonKey() List<Skill> get birthSkills {
  if (_birthSkills is EqualUnmodifiableListView) return _birthSkills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_birthSkills);
}

 final  List<Skill> _optionalSkills;
@override@JsonKey() List<Skill> get optionalSkills {
  if (_optionalSkills is EqualUnmodifiableListView) return _optionalSkills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_optionalSkills);
}


/// Create a copy of People
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeopleCopyWith<_People> get copyWith => __$PeopleCopyWithImpl<_People>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeopleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _People&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._courage, _courage)&&const DeepCollectionEquality().equals(other._intellect, _intellect)&&const DeepCollectionEquality().equals(other._charisma, _charisma)&&const DeepCollectionEquality().equals(other._dexterity, _dexterity)&&const DeepCollectionEquality().equals(other._strength, _strength)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.parry, parry) || other.parry == parry)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.pr, pr) || other.pr == pr)&&(identical(other.load, load) || other.load == load)&&const DeepCollectionEquality().equals(other._jobs, _jobs)&&const DeepCollectionEquality().equals(other._birthSkills, _birthSkills)&&const DeepCollectionEquality().equals(other._optionalSkills, _optionalSkills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_courage),const DeepCollectionEquality().hash(_intellect),const DeepCollectionEquality().hash(_charisma),const DeepCollectionEquality().hash(_dexterity),const DeepCollectionEquality().hash(_strength),attack,parry,hp,pr,load,const DeepCollectionEquality().hash(_jobs),const DeepCollectionEquality().hash(_birthSkills),const DeepCollectionEquality().hash(_optionalSkills));

@override
String toString() {
  return 'People(name: $name, courage: $courage, intellect: $intellect, charisma: $charisma, dexterity: $dexterity, strength: $strength, attack: $attack, parry: $parry, hp: $hp, pr: $pr, load: $load, jobs: $jobs, birthSkills: $birthSkills, optionalSkills: $optionalSkills)';
}


}

/// @nodoc
abstract mixin class _$PeopleCopyWith<$Res> implements $PeopleCopyWith<$Res> {
  factory _$PeopleCopyWith(_People value, $Res Function(_People) _then) = __$PeopleCopyWithImpl;
@override @useResult
$Res call({
 String name, List<int> courage, List<int> intellect, List<int> charisma, List<int> dexterity, List<int> strength, int attack, int parry, int hp, int pr, int load, List<Job> jobs, List<Skill> birthSkills, List<Skill> optionalSkills
});




}
/// @nodoc
class __$PeopleCopyWithImpl<$Res>
    implements _$PeopleCopyWith<$Res> {
  __$PeopleCopyWithImpl(this._self, this._then);

  final _People _self;
  final $Res Function(_People) _then;

/// Create a copy of People
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? courage = null,Object? intellect = null,Object? charisma = null,Object? dexterity = null,Object? strength = null,Object? attack = null,Object? parry = null,Object? hp = null,Object? pr = null,Object? load = null,Object? jobs = null,Object? birthSkills = null,Object? optionalSkills = null,}) {
  return _then(_People(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,courage: null == courage ? _self._courage : courage // ignore: cast_nullable_to_non_nullable
as List<int>,intellect: null == intellect ? _self._intellect : intellect // ignore: cast_nullable_to_non_nullable
as List<int>,charisma: null == charisma ? _self._charisma : charisma // ignore: cast_nullable_to_non_nullable
as List<int>,dexterity: null == dexterity ? _self._dexterity : dexterity // ignore: cast_nullable_to_non_nullable
as List<int>,strength: null == strength ? _self._strength : strength // ignore: cast_nullable_to_non_nullable
as List<int>,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,parry: null == parry ? _self.parry : parry // ignore: cast_nullable_to_non_nullable
as int,hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as int,pr: null == pr ? _self.pr : pr // ignore: cast_nullable_to_non_nullable
as int,load: null == load ? _self.load : load // ignore: cast_nullable_to_non_nullable
as int,jobs: null == jobs ? _self._jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Job>,birthSkills: null == birthSkills ? _self._birthSkills : birthSkills // ignore: cast_nullable_to_non_nullable
as List<Skill>,optionalSkills: null == optionalSkills ? _self._optionalSkills : optionalSkills // ignore: cast_nullable_to_non_nullable
as List<Skill>,
  ));
}


}

// dart format on
