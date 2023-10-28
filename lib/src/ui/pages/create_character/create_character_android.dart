import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/job.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/jobs.enum.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/people.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/peoples.enum.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/player_character.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/skill.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/skills.enum.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/specialization.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/specializations.enum.dart';
import 'package:terre_de_fangh/src/data/resources/services/dices.service.dart';
import 'package:terre_de_fangh/src/data/resources/services/save.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/character_sheet.dart';
import 'package:terre_de_fangh/src/lang/fr_FR/create_character.dart';
import 'package:terre_de_fangh/src/lang/fr_FR/system.dart';
import 'package:terre_de_fangh/src/ui/Assets/images.dart';
import 'package:terre_de_fangh/src/ui/components/background/background.dart';
import 'package:terre_de_fangh/src/ui/instances/background/background.dart';
import 'package:terre_de_fangh/src/ui/themes/icons_dices.dart';

class CreateCharacterAndroid extends StatefulWidget {
  const CreateCharacterAndroid({super.key});

  @override
  State<CreateCharacterAndroid> createState() => _CreateCharacterAndroidState();
}

class _CreateCharacterAndroidState extends State<CreateCharacterAndroid>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _statisticsForm = GlobalKey<FormState>();
  final GlobalKey<FormState> _characterForm = GlobalKey<FormState>();
  final GlobalKey<FormState> _skillsForm = GlobalKey<FormState>();
  final GlobalKey<FormState> _modifyForm = GlobalKey<FormState>();
  final GlobalKey<FormState> _finalForm = GlobalKey<FormState>();
  final ScrollController _scrollControllerObtain = ScrollController();
  final ScrollController _scrollControllerChoose = ScrollController();
  late TabController _controller;

  //step 1
  final TextEditingController _courageController = TextEditingController();
  final TextEditingController _intellectController = TextEditingController();
  final TextEditingController _charismaController = TextEditingController();
  final TextEditingController _dexterityController = TextEditingController();
  final TextEditingController _strengthController = TextEditingController();
  late List<TextEditingController> _statisticsController;

  //step 2
  late People _peopleController;
  late Job _jobController;
  late Specialization _specializationController;
  late List<People> _peoplesList;
  late List<Job> _jobsList;
  late List<Specialization> _specializationsList;

  //step 3
  late List<Skill> _skillsObtain;
  late List<Skill> _skillsChoose;
  late bool _isHuman;
  late List<bool> _skillsController;

  //step 4
  late List<Skill> _skills;
  late bool _modifier;
  late bool _isOgre;
  late bool _isFighter;
  late bool _isRanger;
  late bool _isDealer;
  late bool _isEngineer;
  late bool _lowDexterity;
  late bool _highDexterity;
  late bool _superPowerful;
  late int _damageOgre;
  late int _attackTemp;
  late int _parryTemp;
  late int _courageTemp;
  late int _intellectTemp;
  late int _charismaTemp;
  late int _dexterityTemp;
  late int _strengthTemp;
  late int _count1;
  late int _count2;
  late bool _count2Down;
  late bool _count2Up;
  late int _count3;
  late bool _lowAttack;
  late bool _lowParry;
  late bool _highAttack;
  late bool _highParry;

  //step 5
  final TextEditingController _fateController = TextEditingController();
  final TextEditingController _goldController = TextEditingController();
  final TextEditingController _silverController = TextEditingController();
  late List<TextEditingController> _wealthController;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  late bool _isBourgeois;

  //save
  late int _healthPoints;
  late int _astralPoints;
  late int _maxLoad;
  late int _maxNaturalPR;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    _controller = TabController(length: 5, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });

    //step 1
    _statisticsController = [
      _courageController,
      _intellectController,
      _charismaController,
      _dexterityController,
      _strengthController,
    ];
    for (final element in _statisticsController) {
      element.text = '8';
    }

    //step 2
    _peopleController = peopleMonster;
    _jobController = jobAny;
    _specializationController = specializationAny;
    _peoplesList = [];
    _jobsList = [];
    _specializationsList = [];

    //step 3
    _skillsObtain = [];
    _skillsChoose = [];
    _isHuman = false;
    _skillsController = [];

    //step 4
    _skills = [];
    _modifier = false;
    _isOgre = false;
    _isFighter = false;
    _isRanger = false;
    _isDealer = false;
    _isEngineer = false;
    _lowDexterity = false;
    _highDexterity = false;
    _superPowerful = false;
    _damageOgre = 0;
    _attackTemp = -1;
    _parryTemp = -1;
    _courageTemp = -1;
    _intellectTemp = -1;
    _charismaTemp = -1;
    _dexterityTemp = -1;
    _strengthTemp = -1;
    _count1 = 3;
    _count2 = 2;
    _count2Down = true;
    _count2Up = false;
    _count3 = 1;
    _lowAttack = false;
    _lowParry = false;
    _highAttack = false;
    _highParry = false;

    //step 5
    _fateController.text = '0';
    _wealthController = [
      _goldController,
      _silverController,
    ];
    for (final element in _wealthController) {
      element.text = '0';
    }
    _nameController.text = '';
    _genderController.text = '';
    _isBourgeois = false;

    //save
    _healthPoints = 0;
    _astralPoints = 0;
    _maxLoad = 0;
    _maxNaturalPR = 0;
  }

  @override
  void dispose() {
    //step 1
    for (final element in _statisticsController) {
      element.dispose();
    }
    for (final element in _wealthController) {
      element.dispose();
    }
    _fateController.dispose();
    _nameController.dispose();
    _genderController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            children: <Widget>[
              //step 1
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height -
                            Scaffold.of(context).appBarMaxHeight! -
                            kToolbarHeight -
                            kBottomNavigationBarHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Form(
                          key: _statisticsForm,
                          child: Column(
                            children: [
                              Text(
                                LangCreateCharacter.statistics,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        LangCharacterSheet.courageCOUCharacter,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statisticsController[0],
                                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType: const TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return LangCreateCharacter.between8And20;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 32),
                                        child: IconButton(
                                          icon: const Icon(IconsDices.dice6),
                                          color: Theme.of(context).colorScheme.onBackground,
                                          onPressed: () {
                                            final value = Dices().d6() + 7;
                                            _statisticsController[0].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        LangCharacterSheet.intellectINTCharacter,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statisticsController[1],
                                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType:  const TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return LangCreateCharacter.between8And20;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 32),
                                        child: IconButton(
                                          icon: const Icon(IconsDices.dice6),
                                          color: Theme.of(context).colorScheme.onBackground,
                                          onPressed: () {
                                            final value = Dices().d6() + 7;
                                            _statisticsController[1].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        LangCharacterSheet.charismaCHACharacter,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statisticsController[2],
                                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType: const TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return LangCreateCharacter.between8And20;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 32),
                                        child: IconButton(
                                          icon: const Icon(IconsDices.dice6),
                                          color: Theme.of(context).colorScheme.onBackground,
                                          onPressed: () {
                                            final value = Dices().d6() + 7;
                                            _statisticsController[2].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        LangCharacterSheet.dexterityDEXCharacter,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statisticsController[3],
                                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType: const TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return LangCreateCharacter.between8And20;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 32),
                                        child: IconButton(
                                          icon: const Icon(IconsDices.dice6),
                                          color: Theme.of(context).colorScheme.onBackground,
                                          onPressed: () {
                                            final value = Dices().d6() + 7;
                                            _statisticsController[3].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        LangCharacterSheet.strengthSTRCharacter,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statisticsController[4],
                                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType: const TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return LangCreateCharacter.between8And20;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 32),
                                        child: IconButton(
                                          icon: const Icon(IconsDices.dice6),
                                          color: Theme.of(context).colorScheme.onBackground,
                                          onPressed: () {
                                            final value = Dices().d6() + 7;
                                            _statisticsController[4].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  child: SvgPicture.asset(AssetsImages.dice20),
                                  onPressed: () {
                                    for (final element in _statisticsController) {
                                      final value = Dices().d6() + 7;
                                      element.text = value.toString();
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //step 2
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: Form(
                  key: _characterForm,
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          LangCreateCharacter.character,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    LangCharacterSheet.peopleCharacter,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                  ),
                                  Expanded(
                                    child: DropdownButtonFormField<People>(
                                      dropdownColor: Theme.of(context).colorScheme.surfaceVariant,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                                      value: _peopleController,
                                      items: _peoplesList.map(buildMenuPeople).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          _peopleController = value!;
                                          _jobsList = [];
                                          for (final job in _peopleController.jobs) {
                                            var test = false;
                                            for (var i = 0; i < 5; i++) {
                                              test = int.parse(_statisticsController[i].text) >
                                                      job.statistics()[i][0] - 1 &&
                                                  int.parse(_statisticsController[i].text) <
                                                      job.statistics()[i][1] + 1;
                                              if (!test) break;
                                            }
                                            if (test) _jobsList.add(job);
                                          }
                                          _jobController = _jobsList[0];

                                          _specializationsList = _jobController.specialization;
                                          _specializationController = _specializationsList[0];
                                        });
                                      },
                                      validator: (value) {
                                        if (value == null) {
                                          return LangCreateCharacter.makeAChoice;
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    LangCharacterSheet.jobCharacter,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                  ),
                                  Expanded(
                                    child: DropdownButtonFormField<Job>(
                                      dropdownColor: Theme.of(context).colorScheme.surfaceVariant,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                                      value: _jobController,
                                      items: _jobsList.map(buildMenuJob).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          _jobController = value!;
                                          _specializationsList = _jobController.specialization;
                                          _specializationController = _specializationsList[0];
                                        });
                                      },
                                      validator: (value) {
                                        if (value == null) {
                                          return LangCreateCharacter.makeAChoice;
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    LangCreateCharacter.specialization,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                  ),
                                  Expanded(
                                    child: DropdownButtonFormField<Specialization>(
                                      dropdownColor: Theme.of(context).colorScheme.surfaceVariant,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
                                      value: _specializationController,
                                      items: _specializationsList.map(buildMenuSpecialization).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          _specializationController = value!;
                                        });
                                      },
                                      validator: (value) {
                                        if (value == null) {
                                          return LangCreateCharacter.makeAChoice;
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //step 3
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: Form(
                  key: _skillsForm,
                  child: Column(
                    children: [
                      Text(
                        LangCreateCharacter.skills,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                      ),
                      if (_isHuman == false)
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      LangCreateCharacter.acquiredSkills,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                    ),
                                    Expanded(
                                      child: Scrollbar(
                                        thumbVisibility: true,
                                        controller: _scrollControllerObtain,
                                        child: ListView.builder(
                                          controller: _scrollControllerObtain,
                                          shrinkWrap: true,
                                          itemCount: _skillsObtain.length,
                                          itemBuilder: (BuildContext context, int index) {
                                            return ListTile(
                                              title: Text(
                                                _skillsObtain[index].skill,
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: Theme.of(context).colorScheme.onBackground,),
                                              ),
                                              onTap: () {
                                                showDialog<AlertDialog>(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      backgroundColor:
                                                          Theme.of(context).colorScheme.surfaceVariant,
                                                      title: Text(
                                                        _skillsObtain[index].skill,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleLarge
                                                            ?.copyWith(
                                                                color: Theme.of(context)
                                                                    .colorScheme
                                                                    .onSurfaceVariant,),
                                                      ),
                                                      content: SingleChildScrollView(
                                                        child: Text(
                                                          _skillsObtain[index].described,
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onSurfaceVariant,),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    _isHuman
                                        ? LangCreateCharacter.selectSkills4
                                        : LangCreateCharacter.selectSkills2,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                                  ),
                                  Expanded(
                                    child: FormField(
                                      builder: (FormFieldState<int> skillsField) {
                                        return Scrollbar(
                                          thumbVisibility: true,
                                          controller: _scrollControllerChoose,
                                          child: ListView.builder(
                                            controller: _scrollControllerChoose,
                                            shrinkWrap: true,
                                            itemCount: _skillsChoose.length,
                                            itemBuilder: (BuildContext context, int index) {
                                              return Row(
                                                children: [
                                                  Checkbox(
                                                    activeColor: Theme.of(context).colorScheme.primary,
                                                    value: _skillsController[index],
                                                    onChanged: (value) {
                                                      setState(() {
                                                        _skillsController[index] = value!;
                                                        _skillsChoose[index].selected = value;
                                                      });
                                                    },
                                                  ),
                                                  Expanded(
                                                    child: ListTile(
                                                      title: Text(
                                                        _skillsChoose[index].skill,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge
                                                            ?.copyWith(
                                                                color: Theme.of(context)
                                                                    .colorScheme
                                                                    .onBackground,),
                                                      ),
                                                      onTap: () {
                                                        showDialog<AlertDialog>(
                                                          context: context,
                                                          builder: (context) {
                                                            return AlertDialog(
                                                              backgroundColor: Theme.of(context)
                                                                  .colorScheme
                                                                  .surfaceVariant,
                                                              title: Text(
                                                                _skillsChoose[index].skill,
                                                                style: Theme.of(context)
                                                                    .textTheme
                                                                    .titleLarge
                                                                    ?.copyWith(
                                                                        color: Theme.of(context)
                                                                            .colorScheme
                                                                            .onSurfaceVariant,),
                                                              ),
                                                              content: SingleChildScrollView(
                                                                child: Text(
                                                                  _skillsChoose[index].described,
                                                                  style: Theme.of(context)
                                                                      .textTheme
                                                                      .bodyLarge
                                                                      ?.copyWith(
                                                                          color: Theme.of(context)
                                                                              .colorScheme
                                                                              .onSurfaceVariant,),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      validator: (skillsSelected) {
                                        skillsSelected =
                                            _skillsController.where((element) => element == true).length;
                                        if (_isHuman && skillsSelected == 4) return null;
                                        if (!_isHuman && skillsSelected == 2) return null;
                                        if (_isHuman && skillsSelected != 4) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text(LangCreateCharacter.select4skills),
                                            ),
                                          );
                                          return LangCreateCharacter.select4skills;
                                        }
                                        if (!_isHuman && skillsSelected != 2) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text(LangCreateCharacter.select2skills),
                                            ),
                                          );
                                          return LangCreateCharacter.select2skills;
                                        }
                                        return LangSystem.error;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //step 4
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: Form(
                  key: _modifyForm,
                  child: Column(
                    children: [
                      Text(
                        LangCreateCharacter.modifier,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                      ),
                      if (!_modifier)
                        FormField(
                          builder: (FormFieldState<bool> noModify) {
                            return Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          LangCreateCharacter.noModifier,
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: Theme.of(context).colorScheme.onBackground,),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          validator: (noModify) {
                            return null;
                          },
                        ),
                      if (_modifier && _isOgre)
                        FormField(
                          builder: (FormFieldState<bool> ogreModify) {
                            return Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            LangCreateCharacter.youAreAnOgre,
                                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                                color: Theme.of(context).colorScheme.onBackground,),
                                          ),
                                        ),
                                        Text(
                                          LangCreateCharacter.obtainSuperPowerful,
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: Theme.of(context).colorScheme.onBackground,),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              IconButton(
                                                icon: const Icon(Icons.keyboard_arrow_down),
                                                color: Theme.of(context).colorScheme.onBackground,
                                                onPressed: () {
                                                  setState(() {
                                                    if (_count1 < 1) {
                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                          content: Text(
                                                              LangCreateCharacter.alreadyUsed3Points,),
                                                        ),
                                                      );
                                                    } else {
                                                      _count1--;
                                                      _attackTemp--;
                                                      _damageOgre++;
                                                      _superPowerful = true;
                                                    }
                                                  });
                                                },
                                              ),
                                              Text(
                                                '$_attackTemp AT',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: Theme.of(context).colorScheme.onBackground,),
                                              ),
                                              const Spacer(),
                                              IconButton(
                                                icon: const Icon(Icons.keyboard_arrow_down),
                                                color: Theme.of(context).colorScheme.onBackground,
                                                onPressed: () {
                                                  setState(() {
                                                    if (_count1 < 1) {
                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                          content: Text(
                                                              LangCreateCharacter.alreadyUsed3Points,),
                                                        ),
                                                      );
                                                    } else {
                                                      _count1--;
                                                      _parryTemp--;
                                                      _damageOgre++;
                                                      _superPowerful = true;
                                                    }
                                                  });
                                                },
                                              ),
                                              Text(
                                                '$_parryTemp ${LangCreateCharacter.pa}',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: Theme.of(context).colorScheme.onBackground,),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          validator: (ogreModify) {
                            return null;
                          },
                        ),
                      if (_modifier && _isFighter)
                        FormField(
                          builder: (FormFieldState<bool> fighterModify) {
                            return Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            LangCreateCharacter.youAreAFighter,
                                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                                color: Theme.of(context).colorScheme.onBackground,),
                                          ),
                                        ),
                                        Text(
                                          LangCreateCharacter.canChanged1AtPa,
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: Theme.of(context).colorScheme.onBackground,),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              if (_count2Down)
                                                IconButton(
                                                  icon: const Icon(Icons.keyboard_arrow_down),
                                                  color: Theme.of(context).colorScheme.onBackground,
                                                  onPressed: () {
                                                    setState(() {
                                                      _count2--;
                                                      _count2Up = true;
                                                      _count2Down = false;
                                                      _attackTemp--;
                                                    });
                                                  },
                                                ),
                                              if (_count2Up)
                                                IconButton(
                                                  icon: const Icon(Icons.keyboard_arrow_up),
                                                  color: Theme.of(context).colorScheme.onBackground,
                                                  onPressed: () {
                                                    setState(() {
                                                      _count2--;
                                                      _count2Up = false;
                                                      _count2Down = false;
                                                      _attackTemp++;
                                                    });
                                                  },
                                                ),
                                              Text(
                                                '$_attackTemp ${LangCreateCharacter.at}',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: Theme.of(context).colorScheme.onBackground,),
                                              ),
                                              const Spacer(),
                                              if (_count2Down)
                                                IconButton(
                                                  icon: const Icon(Icons.keyboard_arrow_down),
                                                  color: Theme.of(context).colorScheme.onBackground,
                                                  onPressed: () {
                                                    setState(() {
                                                      _count2--;
                                                      _count2Up = true;
                                                      _count2Down = false;
                                                      _parryTemp--;
                                                    });
                                                  },
                                                ),
                                              if (_count2Up)
                                                IconButton(
                                                  icon: const Icon(Icons.keyboard_arrow_up),
                                                  color: Theme.of(context).colorScheme.onBackground,
                                                  onPressed: () {
                                                    setState(() {
                                                      _count2--;
                                                      _count2Up = false;
                                                      _count2Down = false;
                                                      _parryTemp++;
                                                    });
                                                  },
                                                ),
                                              Text(
                                                '$_parryTemp ${LangCreateCharacter.pa}',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: Theme.of(context).colorScheme.onBackground,),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          validator: (fighterModify) {
                            if (_count2 == 1) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(LangCreateCharacter.mustPutAtOrPa),
                                ),
                              );
                              return LangCreateCharacter.mustPutAtOrPa;
                            }
                            return null;
                          },
                        ),
                      if (_modifier && _isRanger)
                        FormField(
                          builder: (FormFieldState<bool> rangerModify) {
                            return Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            LangCreateCharacter.youAreARanger,
                                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                                color: Theme.of(context).colorScheme.onBackground,),
                                          ),
                                        ),
                                        Text(
                                          LangCreateCharacter.canChange2Statistics,
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: Theme.of(context).colorScheme.onBackground,),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        if (_count2Down)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_down),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = true;
                                                                _count2Down = false;
                                                                _courageTemp--;
                                                              });
                                                            },
                                                          ),
                                                        if (_count2Up)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_up),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = false;
                                                                _count2Down = false;
                                                                _courageTemp++;
                                                              });
                                                            },
                                                          ),
                                                        Text(
                                                          '$_courageTemp ${LangCreateCharacter.cou}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                        const Spacer(),
                                                        if (_count2Down)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_down),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = true;
                                                                _count2Down = false;
                                                                _intellectTemp--;
                                                              });
                                                            },
                                                          ),
                                                        if (_count2Up)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_up),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = false;
                                                                _count2Down = false;
                                                                _intellectTemp++;
                                                              });
                                                            },
                                                          ),
                                                        Text(
                                                          '$_intellectTemp ${LangCreateCharacter.int}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                        const Spacer(),
                                                        if (_count2Down)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_down),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = true;
                                                                _count2Down = false;
                                                                _charismaTemp--;
                                                              });
                                                            },
                                                          ),
                                                        if (_count2Up)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_up),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = false;
                                                                _count2Down = false;
                                                                _charismaTemp++;
                                                              });
                                                            },
                                                          ),
                                                        Text(
                                                          '$_charismaTemp ${LangCreateCharacter.cha}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        if (_count2Down)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_down),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = true;
                                                                _count2Down = false;
                                                                _dexterityTemp--;
                                                                if (_dexterityTemp < 13) {
                                                                  _highDexterity = false;
                                                                }
                                                                if (_dexterityTemp < 9) {
                                                                  _lowDexterity = true;
                                                                }
                                                              });
                                                            },
                                                          ),
                                                        if (_count2Up)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_up),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = false;
                                                                _count2Down = false;
                                                                _dexterityTemp++;
                                                                if (_dexterityTemp > 12) {
                                                                  _highDexterity = true;
                                                                }
                                                                if (_dexterityTemp > 8) {
                                                                  _lowDexterity = false;
                                                                }
                                                              });
                                                            },
                                                          ),
                                                        Text(
                                                          '$_dexterityTemp ${LangCreateCharacter.dex}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                        const Spacer(),
                                                        if (_count2Down)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_down),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = true;
                                                                _count2Down = false;
                                                                _strengthTemp--;
                                                              });
                                                            },
                                                          ),
                                                        if (_count2Up)
                                                          IconButton(
                                                            icon: const Icon(Icons.keyboard_arrow_up),
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,
                                                            onPressed: () {
                                                              setState(() {
                                                                _count2--;
                                                                _count2Up = false;
                                                                _count2Down = false;
                                                                _strengthTemp++;
                                                              });
                                                            },
                                                          ),
                                                        Text(
                                                          '$_strengthTemp ${LangCreateCharacter.str}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          validator: (rangerModify) {
                            if (_count2 == 1) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(LangCreateCharacter.mustPutStatistic),
                                ),
                              );
                              return LangCreateCharacter.mustPutStatistic;
                            }
                            return null;
                          },
                        ),
                      if (_modifier && _isDealer)
                        FormField(
                          builder: (FormFieldState<bool> dealerModify) {
                            return Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            LangCreateCharacter.youAreADealer,
                                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                                color: Theme.of(context).colorScheme.onBackground,),
                                          ),
                                        ),
                                        Text(
                                          LangCreateCharacter.mustChangeFightIntCha,
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: Theme.of(context).colorScheme.onBackground,),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        IconButton(
                                                          icon: const Icon(Icons.keyboard_arrow_down),
                                                          color:
                                                              Theme.of(context).colorScheme.onBackground,
                                                          onPressed: () {
                                                            setState(() {
                                                              if (_count2 < 1) {
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(
                                                                  const SnackBar(
                                                                    content: Text(LangCreateCharacter
                                                                        .alreadyChangedPoints,),
                                                                  ),
                                                                );
                                                              } else {
                                                                if (_count2 == 1) {
                                                                  ScaffoldMessenger.of(context)
                                                                      .showSnackBar(
                                                                    const SnackBar(
                                                                      content: Text(LangCreateCharacter
                                                                          .putThePoint,),
                                                                    ),
                                                                  );
                                                                } else {
                                                                  _count2--;
                                                                  _attackTemp--;
                                                                }
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        Text(
                                                          '$_attackTemp ${LangCreateCharacter.at}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                        const Spacer(),
                                                        IconButton(
                                                          icon: const Icon(Icons.keyboard_arrow_down),
                                                          color:
                                                              Theme.of(context).colorScheme.onBackground,
                                                          onPressed: () {
                                                            setState(() {
                                                              if (_count2 < 1) {
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(
                                                                  const SnackBar(
                                                                    content: Text(LangCreateCharacter
                                                                        .alreadyChangedPoints,),
                                                                  ),
                                                                );
                                                              } else {
                                                                if (_count2 == 1) {
                                                                  ScaffoldMessenger.of(context)
                                                                      .showSnackBar(
                                                                    const SnackBar(
                                                                      content: Text(LangCreateCharacter
                                                                          .putThePoint,),
                                                                    ),
                                                                  );
                                                                } else {
                                                                  _count2--;
                                                                  _parryTemp--;
                                                                }
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        Text(
                                                          '$_parryTemp ${LangCreateCharacter.pa}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        IconButton(
                                                          icon: const Icon(Icons.keyboard_arrow_up),
                                                          color:
                                                              Theme.of(context).colorScheme.onBackground,
                                                          onPressed: () {
                                                            setState(() {
                                                              if (_count2 == 2) {
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(
                                                                  const SnackBar(
                                                                    content: Text(LangCreateCharacter
                                                                        .removeThePoint,),
                                                                  ),
                                                                );
                                                              } else {
                                                                _count2--;
                                                                _intellectTemp++;
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        Text(
                                                          '$_intellectTemp ${LangCreateCharacter.int}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                        const Spacer(),
                                                        IconButton(
                                                          icon: const Icon(Icons.keyboard_arrow_up),
                                                          color:
                                                              Theme.of(context).colorScheme.onBackground,
                                                          onPressed: () {
                                                            setState(() {
                                                              if (_count2 == 2) {
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(
                                                                  const SnackBar(
                                                                    content: Text(LangCreateCharacter
                                                                        .removeThePoint,),
                                                                  ),
                                                                );
                                                              } else {
                                                                _count2--;
                                                                _charismaTemp++;
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        Text(
                                                          '$_charismaTemp ${LangCreateCharacter.cha}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          validator: (dealerModify) {
                            if (_count2 == 2) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(LangCreateCharacter.mustIndicateChange),
                                ),
                              );
                              return LangCreateCharacter.mustIndicateChange;
                            }
                            if (_count2 == 1) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(LangCreateCharacter.mustPutStatistic),
                                ),
                              );
                              return LangCreateCharacter.mustPutStatistic;
                            }
                            return null;
                          },
                        ),
                      if (_modifier && _isEngineer)
                        FormField(
                          builder: (FormFieldState<bool> engineerModify) {
                            return Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            LangCreateCharacter.youAreAnEngineer,
                                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                                color: Theme.of(context).colorScheme.onBackground,),
                                          ),
                                        ),
                                        Text(
                                          LangCreateCharacter.mustChangeFightIntDex,
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: Theme.of(context).colorScheme.onBackground,),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        IconButton(
                                                          icon: const Icon(Icons.keyboard_arrow_down),
                                                          color:
                                                              Theme.of(context).colorScheme.onBackground,
                                                          onPressed: () {
                                                            setState(() {
                                                              if (_count2 < 1) {
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(
                                                                  const SnackBar(
                                                                    content: Text(LangCreateCharacter
                                                                        .alreadyChangedPoints,),
                                                                  ),
                                                                );
                                                              } else {
                                                                if (_count2 == 1) {
                                                                  ScaffoldMessenger.of(context)
                                                                      .showSnackBar(
                                                                    const SnackBar(
                                                                      content: Text(LangCreateCharacter
                                                                          .putThePoint,),
                                                                    ),
                                                                  );
                                                                } else {
                                                                  _count2--;
                                                                  _attackTemp--;
                                                                }
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        Text(
                                                          '$_attackTemp ${LangCreateCharacter.at}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                        const Spacer(),
                                                        IconButton(
                                                          icon: const Icon(Icons.keyboard_arrow_down),
                                                          color:
                                                              Theme.of(context).colorScheme.onBackground,
                                                          onPressed: () {
                                                            setState(() {
                                                              if (_count2 < 1) {
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(
                                                                  const SnackBar(
                                                                    content: Text(LangCreateCharacter
                                                                        .alreadyChangedPoints,),
                                                                  ),
                                                                );
                                                              } else {
                                                                if (_count2 == 1) {
                                                                  ScaffoldMessenger.of(context)
                                                                      .showSnackBar(
                                                                    const SnackBar(
                                                                      content: Text(LangCreateCharacter
                                                                          .putThePoint,),
                                                                    ),
                                                                  );
                                                                } else {
                                                                  _count2--;
                                                                  _parryTemp--;
                                                                }
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        Text(
                                                          '$_parryTemp ${LangCreateCharacter.pa}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        IconButton(
                                                          icon: const Icon(Icons.keyboard_arrow_up),
                                                          color:
                                                              Theme.of(context).colorScheme.onBackground,
                                                          onPressed: () {
                                                            setState(() {
                                                              if (_count2 == 2) {
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(
                                                                  const SnackBar(
                                                                    content: Text(LangCreateCharacter
                                                                        .removeThePoint,),
                                                                  ),
                                                                );
                                                              } else {
                                                                _count2--;
                                                                _intellectTemp++;
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        Text(
                                                          '$_intellectTemp ${LangCreateCharacter.int}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                        const Spacer(),
                                                        IconButton(
                                                          icon: const Icon(Icons.keyboard_arrow_up),
                                                          color:
                                                              Theme.of(context).colorScheme.onBackground,
                                                          onPressed: () {
                                                            setState(() {
                                                              if (_count2 == 2) {
                                                                ScaffoldMessenger.of(context)
                                                                    .showSnackBar(
                                                                  const SnackBar(
                                                                    content: Text(LangCreateCharacter
                                                                        .removeThePoint,),
                                                                  ),
                                                                );
                                                              } else {
                                                                _count2--;
                                                                _dexterityTemp++;
                                                                if (_dexterityTemp > 12) {
                                                                  _highDexterity = true;
                                                                }
                                                                if (_dexterityTemp > 8) {
                                                                  _lowDexterity = false;
                                                                }
                                                              }
                                                            });
                                                          },
                                                        ),
                                                        Text(
                                                          '$_dexterityTemp ${LangCreateCharacter.dex}',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .bodyLarge
                                                              ?.copyWith(
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onBackground,),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          validator: (engineerModify) {
                            if (_count2 == 2) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(LangCreateCharacter.mustIndicateChange),
                                ),
                              );
                              return LangCreateCharacter.mustIndicateChange;
                            }
                            if (_count2 == 1) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(LangCreateCharacter.mustPutStatistic),
                                ),
                              );
                              return LangCreateCharacter.mustPutStatistic;
                            }
                            return null;
                          },
                        ),
                      if (_modifier && _lowDexterity)
                        FormField(
                          builder: (FormFieldState<bool> lowDexterityModify) {
                            return Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            LangCreateCharacter.yourDexterityIsLow,
                                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                                color: Theme.of(context).colorScheme.onBackground,),
                                          ),
                                        ),
                                        Text(
                                          LangCreateCharacter.removeFight,
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: Theme.of(context).colorScheme.onBackground,),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              IconButton(
                                                icon: const Icon(Icons.keyboard_arrow_down),
                                                color: Theme.of(context).colorScheme.onBackground,
                                                onPressed: () {
                                                  setState(() {
                                                    if (_count3 < 1) {
                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                          content: Text(LangCreateCharacter
                                                              .alreadyChangedStatistic,),
                                                        ),
                                                      );
                                                    } else {
                                                      _count3--;
                                                      _attackTemp--;
                                                      _lowAttack = true;
                                                    }
                                                  });
                                                },
                                              ),
                                              Text(
                                                '$_attackTemp ${LangCreateCharacter.at}',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: Theme.of(context).colorScheme.onBackground,),
                                              ),
                                              const Spacer(),
                                              IconButton(
                                                icon: const Icon(Icons.keyboard_arrow_down),
                                                color: Theme.of(context).colorScheme.onBackground,
                                                onPressed: () {
                                                  setState(() {
                                                    if (_count3 < 1) {
                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                          content: Text(LangCreateCharacter
                                                              .alreadyChangedStatistic,),
                                                        ),
                                                      );
                                                    } else {
                                                      _count3--;
                                                      _parryTemp--;
                                                      _lowParry = true;
                                                    }
                                                  });
                                                },
                                              ),
                                              Text(
                                                '$_parryTemp ${LangCreateCharacter.pa}',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: Theme.of(context).colorScheme.onBackground,),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          validator: (lowDexterityModify) {
                            if (_count3 > 0) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(LangCreateCharacter.removeFight),
                                ),
                              );
                              return LangCreateCharacter.removeFight;
                            }
                            return null;
                          },
                        ),
                      if (_modifier && _highDexterity)
                        FormField(
                          builder: (FormFieldState<bool> highDexterityModify) {
                            return Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            LangCreateCharacter.yourDexterityIsHigh,
                                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                                color: Theme.of(context).colorScheme.onBackground,),
                                          ),
                                        ),
                                        Text(
                                          LangCreateCharacter.putFight,
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: Theme.of(context).colorScheme.onBackground,),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              IconButton(
                                                icon: const Icon(Icons.keyboard_arrow_up),
                                                color: Theme.of(context).colorScheme.onBackground,
                                                onPressed: () {
                                                  setState(() {
                                                    if (_count3 < 1) {
                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                          content: Text(LangCreateCharacter
                                                              .alreadyChangedStatistic,),
                                                        ),
                                                      );
                                                    } else {
                                                      _count3--;
                                                      _attackTemp++;
                                                      _highAttack = true;
                                                    }
                                                  });
                                                },
                                              ),
                                              Text(
                                                '$_attackTemp ${LangCreateCharacter.at}',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: Theme.of(context).colorScheme.onBackground,),
                                              ),
                                              const Spacer(),
                                              IconButton(
                                                icon: const Icon(Icons.keyboard_arrow_up),
                                                color: Theme.of(context).colorScheme.onBackground,
                                                onPressed: () {
                                                  setState(() {
                                                    if (_count3 < 1) {
                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                        const SnackBar(
                                                          content: Text(LangCreateCharacter
                                                              .alreadyChangedStatistic,),
                                                        ),
                                                      );
                                                    } else {
                                                      _count3--;
                                                      _parryTemp++;
                                                      _highParry = true;
                                                    }
                                                  });
                                                },
                                              ),
                                              Text(
                                                '$_parryTemp ${LangCreateCharacter.pa}',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: Theme.of(context).colorScheme.onBackground,),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          validator: (highDexterityModify) {
                            if (_count3 > 0) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(LangCreateCharacter.putFight),
                                ),
                              );
                              return LangCreateCharacter.putFight;
                            }
                            return null;
                          },
                        ),
                      if (_modifier)
                        Row(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                              ),
                              child: Text(
                                LangCreateCharacter.reset,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
                              ),
                              onPressed: () {
                                setState(() {
                                  _modifier = false;
                                  _isOgre = false;
                                  _isFighter = false;
                                  _isRanger = false;
                                  _isDealer = false;
                                  _isEngineer = false;
                                  _lowDexterity = false;
                                  _highDexterity = false;
                                  _superPowerful = false;
                                  _damageOgre = 0;
                                  _attackTemp = -1;
                                  _parryTemp = -1;
                                  _courageTemp = -1;
                                  _intellectTemp = -1;
                                  _charismaTemp = -1;
                                  _dexterityTemp = -1;
                                  _strengthTemp = -1;
                                  _count1 = 3;
                                  _count2 = 2;
                                  _count2Down = true;
                                  _count2Up = false;
                                  _count3 = 1;
                                  _lowAttack = false;
                                  _lowParry = false;
                                  _highAttack = false;
                                  _highParry = false;

                                  if (_peopleController == peopleOgre) _isOgre = true;
                                  if (_jobController == jobFighter) _isFighter = true;
                                  if (_jobController == jobRanger) _isRanger = true;
                                  if (_jobController == jobDealer) _isDealer = true;
                                  if (_jobController == jobEngineer) _isEngineer = true;
                                  if (int.parse(_statisticsController[3].text) < 9) _lowDexterity = true;
                                  if (int.parse(_statisticsController[3].text) > 12 &&
                                      _jobController != jobNinja) _highDexterity = true;
                                  if (_isOgre ||
                                      _isFighter ||
                                      _isRanger ||
                                      _isDealer ||
                                      _isEngineer ||
                                      _lowDexterity ||
                                      _highDexterity) _modifier = true;

                                  if (_attackTemp < 0) {
                                    if (_jobController == jobBourgeois) {
                                      _attackTemp = _jobController.fight()[0];
                                    } else {
                                      _attackTemp = _peopleController.fight()[0];
                                    }
                                  }
                                  if (_parryTemp < 0) {
                                    if (_jobController == jobBourgeois) {
                                      _parryTemp = _jobController.fight()[1];
                                    } else {
                                      _parryTemp = _peopleController.fight()[1];
                                    }
                                  }
                                  if (_courageTemp < 0) {
                                    _courageTemp = int.parse(_statisticsController[0].text);
                                  }
                                  if (_intellectTemp < 0) {
                                    _intellectTemp = int.parse(_statisticsController[1].text);
                                  }
                                  if (_charismaTemp < 0) {
                                    _charismaTemp = int.parse(_statisticsController[2].text);
                                  }
                                  if (_dexterityTemp < 0) {
                                    _dexterityTemp = int.parse(_statisticsController[3].text);
                                  }
                                  if (_strengthTemp < 0) {
                                    _strengthTemp = int.parse(_statisticsController[4].text);
                                  }

                                  if (_strengthTemp > 12) {
                                    _damageOgre = _strengthTemp - 12;
                                  } else {
                                    _damageOgre = 0;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),

              //step 5
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height -
                            Scaffold.of(context).appBarMaxHeight! -
                            kToolbarHeight -
                            kBottomNavigationBarHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Form(
                          key: _finalForm,
                          child: Column(
                            children: [
                              Text(
                                LangCreateCharacter.finalPart,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        LangCharacterSheet.fatePointsCharacter,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _fateController,
                                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 1,
                                        keyboardType: const TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 0 || int.parse(value) > 3) {
                                            return LangCreateCharacter.between0And3;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 32),
                                        child: IconButton(
                                          icon: const Icon(IconsDices.dice4),
                                          color: Theme.of(context).colorScheme.onBackground,
                                          onPressed: () {
                                            setState(() {
                                              final value = Dices().d4() - 1;
                                              _fateController.text = value.toString();
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    LangCharacterSheet.goldCoinsCharacter,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelLarge
                                                        ?.copyWith(
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    controller: _wealthController[0],
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge
                                                        ?.copyWith(
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,),
                                                    textAlignVertical: TextAlignVertical.bottom,
                                                    textAlign: TextAlign.center,
                                                    maxLength: 2,
                                                    keyboardType:
                                                        const TextInputType.numberWithOptions(),
                                                    inputFormatters: [
                                                      FilteringTextInputFormatter.digitsOnly,
                                                    ],
                                                    decoration: const InputDecoration(
                                                      counterText: '',
                                                    ),
                                                    validator: (value) {
                                                      if (!_isBourgeois &&
                                                          (int.parse(value!) < 20 ||
                                                              int.parse(value) > 120)) {
                                                        return LangCreateCharacter.between20And120;
                                                      }
                                                      if (_isBourgeois &&
                                                          (int.parse(value!) < 40 ||
                                                              int.parse(value) > 240)) {
                                                        return LangCreateCharacter.between40And240;
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 2,
                                                  child: Text(
                                                    LangCharacterSheet.silverCoinsCharacter,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelLarge
                                                        ?.copyWith(
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    controller: _wealthController[1],
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge
                                                        ?.copyWith(
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .onBackground,),
                                                    textAlignVertical: TextAlignVertical.bottom,
                                                    textAlign: TextAlign.center,
                                                    maxLength: 3,
                                                    keyboardType:
                                                        const TextInputType.numberWithOptions(),
                                                    inputFormatters: [
                                                      FilteringTextInputFormatter.digitsOnly,
                                                    ],
                                                    decoration: const InputDecoration(
                                                      counterText: '',
                                                    ),
                                                    validator: (value) {
                                                      if (!_isBourgeois &&
                                                          (int.parse(value!) < 0 ||
                                                              int.parse(value) > 99)) {
                                                        return LangCreateCharacter.between0And99;
                                                      }
                                                      if (_isBourgeois &&
                                                          (int.parse(value!) < 0 ||
                                                              int.parse(value) > 198)) {
                                                        return LangCreateCharacter.between0And198;
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 32),
                                        child: IconButton(
                                          icon: const Icon(IconsDices.dice6_2),
                                          color: Theme.of(context).colorScheme.onBackground,
                                          onPressed: () {
                                            setState(() {
                                              var goldCoins = (Dices().d6() + Dices().d6()) * 10;
                                              var silverCoins = Dices().d100() - 1;
                                              if (_isBourgeois) {
                                                final addGoldCoins = (Dices().d6() + Dices().d6()) * 10;
                                                final addSilverCoins = Dices().d100() - 1;
                                                goldCoins += addGoldCoins;
                                                silverCoins += addSilverCoins;
                                              }
                                              _wealthController[0].text = goldCoins.toString();
                                              _wealthController[1].text = silverCoins.toString();
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        LangCharacterSheet.nameCharacter,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: TextFormField(
                                        controller: _nameController,
                                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                        textAlignVertical: TextAlignVertical.bottom,
                                        validator: (nameCharacter) {
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        LangCharacterSheet.genderCharacter,
                                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: TextFormField(
                                        controller: _genderController,
                                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            color: Theme.of(context).colorScheme.onBackground,),
                                        textAlignVertical: TextAlignVertical.bottom,
                                        validator: (gender) {
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            if (_controller.index == 0) const Spacer() else TextButton(
                    onPressed: _controller.index > 0
                        ? () {
                            //step 5 to step 4
                            if (_controller.index == 4) {
                              _fateController.text = '0';
                              _wealthController = [
                                _goldController,
                                _silverController,
                              ];
                              for (final element in _wealthController) {
                                element.text = '0';
                              }
                              _nameController.text = '';
                              _genderController.text = '';
                              _isBourgeois = false;

                              if (_jobController == jobBourgeois) _isBourgeois = true;
                            }

                            //step 4 to step 3
                            if (_controller.index == 3) {
                              _modifier = false;
                              _isOgre = false;
                              _isFighter = false;
                              _isRanger = false;
                              _isDealer = false;
                              _isEngineer = false;
                              _lowDexterity = false;
                              _highDexterity = false;
                              _superPowerful = false;
                              _damageOgre = 0;
                              _attackTemp = -1;
                              _parryTemp = -1;
                              _courageTemp = -1;
                              _intellectTemp = -1;
                              _charismaTemp = -1;
                              _dexterityTemp = -1;
                              _strengthTemp = -1;
                              _count1 = 3;
                              _count2 = 2;
                              _count2Down = true;
                              _count2Up = false;
                              _count3 = 1;
                              _lowAttack = false;
                              _lowParry = false;
                              _highAttack = false;
                              _highParry = false;

                              if (_peopleController == peopleOgre) _isOgre = true;
                              if (_jobController == jobFighter) _isFighter = true;
                              if (_jobController == jobRanger) _isRanger = true;
                              if (_jobController == jobDealer) _isDealer = true;
                              if (_jobController == jobEngineer) _isEngineer = true;
                              if (int.parse(_statisticsController[3].text) < 9) _lowDexterity = true;
                              if (int.parse(_statisticsController[3].text) > 12 &&
                                  _jobController != jobNinja) _highDexterity = true;
                              if (_isOgre ||
                                  _isFighter ||
                                  _isRanger ||
                                  _isDealer ||
                                  _isEngineer ||
                                  _lowDexterity ||
                                  _highDexterity) _modifier = true;

                              if (_attackTemp < 0) {
                                if (_jobController == jobBourgeois) {
                                  _attackTemp = _jobController.fight()[0];
                                } else {
                                  _attackTemp = _peopleController.fight()[0];
                                }
                              }
                              if (_parryTemp < 0) {
                                if (_jobController == jobBourgeois) {
                                  _parryTemp = _jobController.fight()[1];
                                } else {
                                  _parryTemp = _peopleController.fight()[1];
                                }
                              }
                              if (_courageTemp < 0) {
                                _courageTemp = int.parse(_statisticsController[0].text);
                              }
                              if (_intellectTemp < 0) {
                                _intellectTemp = int.parse(_statisticsController[1].text);
                              }
                              if (_charismaTemp < 0) {
                                _charismaTemp = int.parse(_statisticsController[2].text);
                              }
                              if (_dexterityTemp < 0) {
                                _dexterityTemp = int.parse(_statisticsController[3].text);
                              }
                              if (_strengthTemp < 0) {
                                _strengthTemp = int.parse(_statisticsController[4].text);
                              }

                              if (_strengthTemp > 12) {
                                _damageOgre = _strengthTemp - 12;
                              } else {
                                _damageOgre = 0;
                              }
                            }

                            //step 3 to step 2
                            if (_controller.index == 2) {
                              var skillsPeopleObtain = <Skill>[];
                              var skillsPeopleChoose = <Skill>[];
                              var skillsJobObtain = <Skill>[];
                              var skillsJobChoose = <Skill>[];
                              _skillsController = [];
                              _skillsObtain = [];
                              _skillsChoose = [];
                              _isHuman = false;
                              for (final element in skillEnum) {
                                element.check = false;
                              }
                              if (_peopleController != peopleHuman) {
                                skillsPeopleObtain = _peopleController.birthSkills;
                                skillsPeopleChoose = _peopleController.optionalSkills;
                              }
                              skillsJobObtain = _jobController.inheritedSkills;
                              skillsJobChoose = _jobController.optionalSkills;

                              _skillsObtain = [...skillsPeopleObtain, ...skillsJobObtain];
                              _skillsObtain = _skillsObtain.toSet().toList();
                              _skillsObtain.sort((a, b) => a.skill.compareTo(b.skill));
                              final skillsObtainSet = Set<Skill>.from(_skillsObtain);
                              _skillsChoose = [...skillsPeopleChoose, ...skillsJobChoose];
                              final skillsChooseSet = Set<Skill>.from(_skillsChoose);
                              _skillsChoose = List.from(skillsChooseSet.difference(skillsObtainSet));
                              _skillsChoose = _skillsChoose.toSet().toList();
                              _skillsChoose.sort((a, b) => a.skill.compareTo(b.skill));
                              if (_skillsObtain.isEmpty && _skillsChoose.isEmpty) {
                                _skillsChoose = peopleHuman.optionalSkills;
                                _isHuman = true;
                              }
                              _skillsController = List.filled(_skillsChoose.length, false);
                            }

                            //step 2 to step 1
                            if (_controller.index == 1) {
                              _peoplesList = [];
                              _jobsList = [];
                              _specializationsList = [];
                              _peopleController = peopleMonster;
                              _jobController = jobAny;
                              _specializationController = specializationAny;

                              for (final people in peopleEnum) {
                                var test = false;
                                for (var i = 0; i < 5; i++) {
                                  test = int.parse(_statisticsController[i].text) >
                                          people.statistics()[i][0] - 1 &&
                                      int.parse(_statisticsController[i].text) <
                                          people.statistics()[i][1] + 1;
                                  if (!test) break;
                                }
                                if (test) _peoplesList.add(people);
                              }
                              _peopleController = _peoplesList[0];

                              for (final job in _peopleController.jobs) {
                                var test = false;
                                for (var i = 0; i < 5; i++) {
                                  test = int.parse(_statisticsController[i].text) >
                                          job.statistics()[i][0] - 1 &&
                                      int.parse(_statisticsController[i].text) <
                                          job.statistics()[i][1] + 1;
                                  if (!test) break;
                                }
                                if (test) _jobsList.add(job);
                              }
                              _jobController = _jobsList[0];

                              _specializationsList = _jobController.specialization;
                              _specializationController = _specializationsList[0];
                            }
                            _controller.animateTo(_controller.index - 1);
                          }
                        : null,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Text(
                          LangCreateCharacter.previous,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: Theme.of(context).colorScheme.primary),
                        ),
                      ],
                    ),
                  ),
            Expanded(
              child: Center(
                child: TabPageSelector(
                  controller: _controller,
                  selectedColor: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            TextButton(
              child: Row(
                children: [
                  if (_controller.index < _controller.length - 1) Text(
                          LangCreateCharacter.next,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: Theme.of(context).colorScheme.primary),
                        ) else Text(
                          LangCreateCharacter.save,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: Theme.of(context).colorScheme.primary),
                        ),
                  Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
              onPressed: () {
                //step 1 to step 2
                if (_statisticsForm.currentState != null) {
                  if (_controller.index == 0 && _statisticsForm.currentState!.validate()) {
                    _peoplesList = [];
                    _jobsList = [];
                    _specializationsList = [];
                    _peopleController = peopleMonster;
                    _jobController = jobAny;
                    _specializationController = specializationAny;

                    for (final people in peopleEnum) {
                      var test = false;
                      for (var i = 0; i < 5; i++) {
                        test =
                            int.parse(_statisticsController[i].text) > people.statistics()[i][0] - 1 &&
                                int.parse(_statisticsController[i].text) < people.statistics()[i][1] + 1;
                        if (!test) break;
                      }
                      if (test) _peoplesList.add(people);
                    }
                    _peopleController = _peoplesList[0];

                    for (final job in _peopleController.jobs) {
                      var test = false;
                      for (var i = 0; i < 5; i++) {
                        test = int.parse(_statisticsController[i].text) > job.statistics()[i][0] - 1 &&
                            int.parse(_statisticsController[i].text) < job.statistics()[i][1] + 1;
                        if (!test) break;
                      }
                      if (test) _jobsList.add(job);
                    }
                    _jobController = _jobsList[0];

                    _specializationsList = _jobController.specialization;
                    _specializationController = _specializationsList[0];

                    _controller.animateTo(_controller.index + 1);
                  }
                }
                //step 2 to step 3
                if (_characterForm.currentState != null) {
                  if (_controller.index == 1 && _characterForm.currentState!.validate()) {
                    var skillsPeopleObtain = <Skill>[];
                    var skillsPeopleChoose = <Skill>[];
                    var skillsJobObtain = <Skill>[];
                    var skillsJobChoose = <Skill>[];
                    _skillsController = [];
                    _skillsObtain = [];
                    _skillsChoose = [];
                    _isHuman = false;
                    for (final element in skillEnum) {
                      element.check = false;
                    }
                    if (_peopleController != peopleHuman) {
                      skillsPeopleObtain = _peopleController.birthSkills;
                      skillsPeopleChoose = _peopleController.optionalSkills;
                    }
                    skillsJobObtain = _jobController.inheritedSkills;
                    skillsJobChoose = _jobController.optionalSkills;

                    _skillsObtain = [...skillsPeopleObtain, ...skillsJobObtain];
                    _skillsObtain = _skillsObtain.toSet().toList();
                    _skillsObtain.sort((a, b) => a.skill.compareTo(b.skill));
                    final skillsObtainSet0 = Set<Skill>.from(_skillsObtain);
                    _skillsChoose = [...skillsPeopleChoose, ...skillsJobChoose];
                    final skillsChooseSet0 = Set<Skill>.from(_skillsChoose);
                    _skillsChoose = List.from(skillsChooseSet0.difference(skillsObtainSet0));
                    _skillsChoose = _skillsChoose.toSet().toList();
                    _skillsChoose.sort((a, b) => a.skill.compareTo(b.skill));
                    if (_skillsObtain.isEmpty && _skillsChoose.isEmpty) {
                      _skillsChoose = peopleHuman.optionalSkills;
                      _isHuman = true;
                    }
                    _skillsController = List.filled(_skillsChoose.length, false);

                    _controller.animateTo(_controller.index + 1);
                  }
                }

                //step 3 to step 4
                if (_skillsForm.currentState != null) {
                  if (_controller.index == 2 && _skillsForm.currentState!.validate()) {
                    _skills = [];
                    _modifier = false;
                    _isOgre = false;
                    _isFighter = false;
                    _isRanger = false;
                    _isDealer = false;
                    _isEngineer = false;
                    _lowDexterity = false;
                    _highDexterity = false;
                    _superPowerful = false;
                    _damageOgre = 0;
                    _attackTemp = -1;
                    _parryTemp = -1;
                    _courageTemp = -1;
                    _intellectTemp = -1;
                    _charismaTemp = -1;
                    _dexterityTemp = -1;
                    _strengthTemp = -1;
                    _count1 = 3;
                    _count2 = 2;
                    _count2Down = true;
                    _count2Up = false;
                    _count3 = 1;
                    _lowAttack = false;
                    _lowParry = false;
                    _highAttack = false;
                    _highParry = false;

                    for (var i = 0; i < _skillsChoose.length; i++) {
                      if (_skillsChoose[i].selected) {
                        _skills.add(_skillsChoose[i]);
                      }
                    }
                    _skills = [..._skills, ..._skillsObtain];
                    _skills = _skills.toSet().toList();
                    _skills.sort((a, b) => a.skill.compareTo(b.skill));

                    if (_peopleController == peopleOgre) _isOgre = true;
                    if (_jobController == jobFighter) _isFighter = true;
                    if (_jobController == jobRanger) _isRanger = true;
                    if (_jobController == jobDealer) _isDealer = true;
                    if (_jobController == jobEngineer) _isEngineer = true;
                    if (int.parse(_statisticsController[3].text) < 9) _lowDexterity = true;
                    if (int.parse(_statisticsController[3].text) > 12 && _jobController != jobNinja) {
                      _highDexterity = true;
                    }
                    if (_isOgre ||
                        _isFighter ||
                        _isRanger ||
                        _isDealer ||
                        _isEngineer ||
                        _lowDexterity ||
                        _highDexterity) _modifier = true;

                    if (_attackTemp < 0) {
                      if (_jobController == jobBourgeois) {
                        _attackTemp = _jobController.fight()[0];
                      } else {
                        _attackTemp = _peopleController.fight()[0];
                      }
                    }
                    if (_parryTemp < 0) {
                      if (_jobController == jobBourgeois) {
                        _parryTemp = _jobController.fight()[1];
                      } else {
                        _parryTemp = _peopleController.fight()[1];
                      }
                    }
                    if (_courageTemp < 0) _courageTemp = int.parse(_statisticsController[0].text);
                    if (_intellectTemp < 0) _intellectTemp = int.parse(_statisticsController[1].text);
                    if (_charismaTemp < 0) _charismaTemp = int.parse(_statisticsController[2].text);
                    if (_dexterityTemp < 0) _dexterityTemp = int.parse(_statisticsController[3].text);
                    if (_strengthTemp < 0) _strengthTemp = int.parse(_statisticsController[4].text);

                    if (_strengthTemp > 12) {
                      _damageOgre = _strengthTemp - 12;
                    } else {
                      _damageOgre = 0;
                    }

                    _controller.animateTo(_controller.index + 1);
                  }
                }

                //step 4 to step 5
                if (_modifyForm.currentState != null) {
                  if (_controller.index == 3 && _modifyForm.currentState!.validate()) {
                    _fateController.text = '0';
                    _wealthController = [
                      _goldController,
                      _silverController,
                    ];
                    for (final element in _wealthController) {
                      element.text = '0';
                    }
                    _nameController.text = '';
                    _genderController.text = '';
                    _isBourgeois = false;

                    if (_jobController == jobBourgeois) _isBourgeois = true;
                    if (!_highDexterity) {
                      if (_highAttack) _attackTemp--;
                      if (_highParry) _parryTemp--;
                    }
                    if (!_lowDexterity) {
                      if (_lowAttack) _attackTemp++;
                      if (_lowParry) _parryTemp++;
                    }

                    _controller.animateTo(_controller.index + 1);
                  }
                }

                //step 5 to save
                if (_finalForm.currentState != null) {
                  if (_controller.index == 4 && _finalForm.currentState!.validate()) {
                    _healthPoints = _peopleController.hp + _jobController.points()[0];
                    if ((_peopleController == peopleHuman || _peopleController == peopleBarbarian) &&
                        _jobController == jobFighter) _healthPoints = 35;
                    if (_jobController == jobWizard) {
                      if (_peopleController == peopleHuman) {
                        _healthPoints = 20;
                      } else {
                        _healthPoints =
                            (_peopleController.hp - (_peopleController.hp * 30 / 100)).ceil();
                      }
                    }
                    if (_jobController == jobPaladin && _peopleController == peopleHuman) {
                      _healthPoints = 32;
                    }

                    _astralPoints = 0;
                    if (_jobController == jobCleric ||
                        _jobController == jobWizard ||
                        _jobController == jobPaladin) _astralPoints = _jobController.points()[1];

                    _maxLoad = _peopleController.load;
                    if (_jobController == jobWizard &&
                        (_peopleController.load > 10 || _peopleController.load == 0)) _maxLoad = 10;

                    _maxNaturalPR = 0;
                    if (_jobController.pr != 0) _maxNaturalPR = _jobController.pr;
                    if (_jobController.pr == 0) _maxNaturalPR = _peopleController.pr;
                    if (_jobController == jobCleric &&
                        (_specializationController == specializationAdathie ||
                            _specializationController == specializationDlul)) _maxNaturalPR = 5;

                    _statisticsController[0].text = _courageTemp.toString();
                    _statisticsController[1].text = _intellectTemp.toString();
                    _statisticsController[2].text = _charismaTemp.toString();
                    _statisticsController[3].text = _dexterityTemp.toString();
                    _statisticsController[4].text = _strengthTemp.toString();

                    final character = PlayerCharacter(
                      _nameController.text,
                      _genderController.text,
                      _peopleController.people,
                      _jobController.job,
                      _specializationController.specialization,
                      _healthPoints,
                      _astralPoints,
                      int.parse(_fateController.text),
                      _maxLoad,
                      _attackTemp,
                      _parryTemp,
                      int.parse(_statisticsController[0].text),
                      int.parse(_statisticsController[1].text),
                      int.parse(_statisticsController[2].text),
                      int.parse(_statisticsController[3].text),
                      int.parse(_statisticsController[4].text),
                      _maxNaturalPR,
                      _skills,
                    );
                    final characterJson = character.toJson();
                    Save('characters').writeNewJson(characterJson);
                    context.pop<bool>(false);
                  }
                }
              },
            ),
          ],
        ),
      ],
    );
  }

  DropdownMenuItem<People> buildMenuPeople(People value) => DropdownMenuItem(
        value: value,
        child: Text(
          value.people,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      );
  DropdownMenuItem<Job> buildMenuJob(Job value) => DropdownMenuItem(
        value: value,
        child: Text(
          value.job,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      );
  DropdownMenuItem<Specialization> buildMenuSpecialization(Specialization value) => DropdownMenuItem(
        value: value,
        child: Text(
          value.specialization,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      );
}
