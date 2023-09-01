import 'package:terre_de_fangh/src/data/models/creatures/player_character/people.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/jobs.enum.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/skills.enum.dart';

final People peopleHuman = People(
    'Humain',
    [8, 20],
    [8, 20],
    [8, 20],
    [8, 20],
    [8, 20],
    8,
    10,
    30,
    0,
    0,
    [
      jobFighter,
      jobNinja,
      jobRogue,
      jobCleric,
      jobWizard,
      jobPaladin,
      jobRanger,
      jobBard,
      jobDealer,
      jobEngineer,
      jobPirate,
      jobBourgeois,
      jobTorturer,
      jobMyrmidon,
      jobAny
    ],
    [],
    [
      skillAmbidextrous,
      skillAgoraphobia,
      skillCallForReinforcements,
      skillBarrelCall,
      skillBellyCall,
      skillStuffingWeapons,
      skillScamAndSwindling,
      skillAttractsMonster,
      skillInYourFace,
      skillAmateurHandyman,
      skillGroupLeader,
      skillMessUp,
      skillRide,
      skillFurl,
      skillUnderstandAnimals,
      skillCook,
      skillSilentMovement,
      skillDefuse,
      skillDetect,
      skillErudition,
      skillClimb,
      skillBlacksmith,
      skillLooselyHit,
      skillPoppycock,
      skillDiggingThroughTrashCans,
      skillSurvivalInstinct,
      skillTreasureInstinct,
      skillIntimidate,
      skillJugglingAndDancing,
      skillMonsterLanguages,
      skillMistrust,
      skillBeggingAndWhining,
      skillSwim,
      skillTouchingNaivety,
      skillAnnoying,
      skillTrack,
      skillFirstAid,
      skillSkinflint,
      skillRecovery,
      skillLikeNothing,
      skillWeirdRunes,
      skillFeetSmell,
      skillLocksmith,
      skillHollowHead,
      skillShootProperly,
      skillFallIntoTraps,
      skillPainIsForTheWeak
    ]);

final People peopleBarbarian = People(
    'Barbare',
    [12, 20],
    [8, 20],
    [8, 20],
    [8, 20],
    [13, 20],
    9,
    9,
    35,
    0,
    0,
    [jobFighter, jobNinja, jobRogue, jobRanger, jobPirate, jobTorturer, jobAny],
    [skillAmbidextrous, skillMessUp, skillFeetSmell, skillHollowHead],
    [
      skillStuffingWeapons,
      skillInYourFace,
      skillRide,
      skillClimb,
      skillIntimidate,
      skillSwim,
      skillTrack,
      skillShootProperly,
      skillPainIsForTheWeak
    ]);

final People peopleDwarf = People(
    'Nain',
    [11, 20],
    [8, 20],
    [8, 20],
    [8, 20],
    [12, 20],
    8,
    10,
    35,
    0,
    0,
    [
      jobFighter,
      jobNinja,
      jobRogue,
      jobRanger,
      jobDealer,
      jobEngineer,
      jobPirate,
      jobBourgeois,
      jobTorturer,
      jobAny
    ],
    [skillBarrelCall, skillTreasureInstinct, skillAnnoying, skillSkinflint],
    [
      skillCallForReinforcements,
      skillScamAndSwindling,
      skillInYourFace,
      skillAmateurHandyman,
      skillMessUp,
      skillBlacksmith,
      skillPoppycock,
      skillMistrust,
      skillShootProperly,
      skillPainIsForTheWeak
    ]);

final People peopleHighElf = People(
    'Haut Elfe',
    [8, 20],
    [11, 20],
    [12, 20],
    [12, 20],
    [8, 12],
    8,
    10,
    25,
    4,
    10,
    [
      jobFighter,
      jobNinja,
      jobRogue,
      jobCleric,
      jobWizard,
      jobPaladin,
      jobRanger,
      jobBard,
      jobDealer,
      jobEngineer,
      jobPirate,
      jobBourgeois,
      jobTorturer,
      jobAny
    ],
    [skillErudition, skillWeirdRunes, skillFallIntoTraps],
    [
      skillGroupLeader,
      skillRide,
      skillJugglingAndDancing,
      skillSwim,
      skillFirstAid,
      skillShootProperly
    ]);

final People peopleHalfElf = People(
    'Demi Elfe',
    [8, 20],
    [8, 20],
    [10, 20],
    [11, 20],
    [8, 20],
    8,
    10,
    28,
    5,
    15,
    [
      jobFighter,
      jobNinja,
      jobRogue,
      jobCleric,
      jobWizard,
      jobPaladin,
      jobRanger,
      jobBard,
      jobDealer,
      jobEngineer,
      jobPirate,
      jobBourgeois,
      jobTorturer,
      jobMyrmidon,
      jobAny
    ],
    [skillCallForReinforcements, skillFurl, skillDetect, skillMistrust],
    [
      skillAmateurHandyman,
      skillRide,
      skillErudition,
      skillClimb,
      skillDiggingThroughTrashCans,
      skillBeggingAndWhining,
      skillSwim,
      skillShootProperly
    ]);

final People peopleSilvanElf = People(
    'Elfe Sylvain',
    [8, 20],
    [8, 20],
    [12, 20],
    [10, 20],
    [8, 11],
    8,
    10,
    25,
    4,
    10,
    [
      jobNinja,
      jobRogue,
      jobCleric,
      jobWizard,
      jobPaladin,
      jobRanger,
      jobBard,
      jobDealer,
      jobEngineer,
      jobPirate,
      jobBourgeois,
      jobTorturer,
      jobAny
    ],
    [skillRide, skillTouchingNaivety, skillFirstAid, skillShootProperly, skillFallIntoTraps],
    [
      skillUnderstandAnimals,
      skillSilentMovement,
      skillJugglingAndDancing,
      skillSwim,
      skillTrack,
      skillHollowHead
    ]);

final People peopleDarkElf = People(
    'Elfe Noir',
    [8, 20],
    [12, 20],
    [8, 20],
    [13, 20],
    [8, 20],
    8,
    10,
    25,
    3,
    15,
    [
      jobFighter,
      jobNinja,
      jobRogue,
      jobCleric,
      jobWizard,
      jobPaladin,
      jobRanger,
      jobBard,
      jobDealer,
      jobEngineer,
      jobPirate,
      jobBourgeois,
      jobTorturer,
      jobAny
    ],
    [skillAgoraphobia, skillSilentMovement, skillDetect, skillShootProperly],
    [
      skillAmbidextrous,
      skillFurl,
      skillErudition,
      skillClimb,
      skillBlacksmith,
      skillLooselyHit,
      skillMistrust,
      skillTrack,
      skillWeirdRunes
    ]);

final People peopleOrc = People(
    'Orque',
    [8, 20],
    [8, 8],
    [8, 10],
    [8, 20],
    [12, 20],
    9,
    9,
    35,
    0,
    0,
    [jobFighter, jobNinja, jobRogue, jobRanger, jobPirate, jobTorturer, jobMyrmidon, jobAny],
    [
      skillAgoraphobia,
      skillSavageCall,
      skillBarrelCall,
      skillInYourFace,
      skillSurvivalInstinct,
      skillFeetSmell,
      skillHollowHead
    ],
    [
      skillStuffingWeapons,
      skillMessUp,
      skillDiggingThroughTrashCans,
      skillIntimidate,
      skillPainIsForTheWeak
    ]);

final People peopleHalfOrc = People(
    'Demi Orque',
    [8, 20],
    [8, 10],
    [8, 20],
    [8, 11],
    [12, 20],
    8,
    10,
    35,
    0,
    0,
    [jobFighter, jobRanger, jobBard, jobPirate, jobTorturer, jobMyrmidon, jobAny],
    [skillAgoraphobia, skillMessUp, skillSurvivalInstinct, skillFeetSmell, skillHollowHead],
    [
      skillStuffingWeapons,
      skillInYourFace,
      skillClimb,
      skillDiggingThroughTrashCans,
      skillIntimidate,
      skillSwim,
      skillShootProperly,
      skillPainIsForTheWeak
    ]);

final People peopleGoblin = People(
    'Gobelin',
    [8, 10],
    [8, 10],
    [8, 8],
    [8, 20],
    [8, 9],
    8,
    10,
    20,
    0,
    10,
    [jobNinja, jobRogue, jobEngineer, jobTorturer, jobMyrmidon, jobAny],
    [
      skillAgoraphobia,
      skillCallForReinforcements,
      skillSavageCall,
      skillAttractsMonster,
      skillSurvivalInstinct,
      skillTreasureInstinct,
      skillFeetSmell,
      skillHollowHead
    ],
    [skillAmateurHandyman, skillDefuse, skillClimb, skillBlacksmith]);

final People peopleOgre = People(
    'Ogre',
    [8, 20],
    [8, 9],
    [8, 10],
    [8, 11],
    [13, 20],
    9,
    9,
    45,
    4,
    0,
    [jobFighter, jobRanger, jobPirate, jobTorturer, jobMyrmidon, jobAny],
    [
      skillBarrelCall,
      skillBellyCall,
      skillStuffingWeapons,
      skillSurvivalInstinct,
      skillIntimidate,
      skillFeetSmell,
      skillHollowHead
    ],
    [
      skillInYourFace,
      skillMessUp,
      skillDiggingThroughTrashCans,
      skillMonsterLanguages,
      skillPainIsForTheWeak
    ]);

final People peopleHobbit = People(
    'Semi-Homme',
    [12, 20],
    [10, 20],
    [8, 20],
    [8, 20],
    [8, 10],
    8,
    10,
    25,
    3,
    10,
    [
      jobNinja,
      jobRogue,
      jobCleric,
      jobWizard,
      jobPaladin,
      jobRanger,
      jobBard,
      jobDealer,
      jobEngineer,
      jobPirate,
      jobBourgeois,
      jobTorturer,
      jobAny
    ],
    [skillBarrelCall, skillAttractsMonster, skillCook, skillSurvivalInstinct, skillLikeNothing],
    [
      skillCallForReinforcements,
      skillFurl,
      skillErudition,
      skillLooselyHit,
      skillPoppycock,
      skillDiggingThroughTrashCans,
      skillTreasureInstinct,
      skillBeggingAndWhining,
      skillShootProperly
    ]);

final People peopleGnome = People(
    'Gnome',
    [8, 20],
    [10, 20],
    [8, 20],
    [13, 20],
    [8, 8],
    10,
    8,
    15,
    2,
    2,
    [jobNinja, jobRogue, jobRanger, jobBard, jobEngineer, jobPirate, jobTorturer, jobMyrmidon, jobAny],
    [
      skillAmbidextrous,
      skillCallForReinforcements,
      skillRide,
      skillFurl,
      skillSilentMovement,
      skillTreasureInstinct
    ],
    [
      skillUnderstandAnimals,
      skillDefuse,
      skillDetect,
      skillClimb,
      skillJugglingAndDancing,
      skillBeggingAndWhining,
      skillSwim,
      skillLocksmith
    ]);

final People peopleMafiaDwarf = People(
    'Nain de la Mafia',
    [10, 20],
    [11, 20],
    [8, 20],
    [12, 20],
    [11, 20],
    10,
    9,
    38,
    5,
    8,
    [jobAny],
    [
      skillAmbidextrous,
      skillBarrelCall,
      skillInYourFace,
      skillFurl,
      skillTreasureInstinct,
      skillSkinflint,
      skillLikeNothing,
      skillAttackLeap,
      skillSly
    ],
    [
      skillCallForReinforcements,
      skillScamAndSwindling,
      skillAmateurHandyman,
      skillDefuse,
      skillDetect,
      skillPoppycock,
      skillMistrust,
      skillTrack,
      skillLocksmith,
      skillShootProperly
    ]);

final People peopleSylderianAmazon = People(
    'Amazone Sylderienne',
    [12, 20],
    [8, 20],
    [12, 20],
    [11, 20],
    [12, 20],
    10,
    8,
    38,
    6,
    0,
    [jobAny],
    [
      skillAttractsMonster,
      skillInYourFace,
      skillMessUp,
      skillRide,
      skillHollowHead,
      skillPainIsForTheWeak,
      skillLongWeapons,
      skillFierceBeauty,
      skillIgnorant,
      skillSurvivor
    ],
    [skillClimb, skillSurvivalInstinct, skillIntimidate, skillSwim, skillTrack, skillShootProperly]);

final People peopleMonster = People(
    'Monstre',
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0],
    8,
    10,
    30,
    0,
    0,
    [
      jobFighter,
      jobNinja,
      jobRogue,
      jobCleric,
      jobWizard,
      jobPaladin,
      jobRanger,
      jobBard,
      jobDealer,
      jobEngineer,
      jobPirate,
      jobBourgeois,
      jobTorturer,
      jobMyrmidon,
      jobAny
    ],
    [],
    [
      skillAmbidextrous,
      skillAgoraphobia,
      skillCallForReinforcements,
      skillSavageCall,
      skillBarrelCall,
      skillBellyCall,
      skillStuffingWeapons,
      skillScamAndSwindling,
      skillAttractsMonster,
      skillInYourFace,
      skillAmateurHandyman,
      skillGroupLeader,
      skillMessUp,
      skillRide,
      skillFurl,
      skillUnderstandAnimals,
      skillCook,
      skillSilentMovement,
      skillDefuse,
      skillDetect,
      skillErudition,
      skillClimb,
      skillBlacksmith,
      skillLooselyHit,
      skillPoppycock,
      skillDiggingThroughTrashCans,
      skillSurvivalInstinct,
      skillTreasureInstinct,
      skillIntimidate,
      skillJugglingAndDancing,
      skillMonsterLanguages,
      skillMistrust,
      skillBeggingAndWhining,
      skillSwim,
      skillTouchingNaivety,
      skillAnnoying,
      skillTrack,
      skillFirstAid,
      skillSkinflint,
      skillRecovery,
      skillLikeNothing,
      skillWeirdRunes,
      skillFeetSmell,
      skillLocksmith,
      skillHollowHead,
      skillShootProperly,
      skillFallIntoTraps,
      skillPainIsForTheWeak,
      skillAttackLeap,
      skillSly,
      skillLongWeapons,
      skillFierceBeauty,
      skillIgnorant,
      skillSurvivor,
      skillVile,
      skillIronGrip,
      skillTormentor,
      skillMiserable,
      skillCoward,
      skillSurviving
    ]);

final List<People> peopleEnum = [
  peopleHuman,
  peopleBarbarian,
  peopleDwarf,
  peopleHighElf,
  peopleHalfElf,
  peopleSilvanElf,
  peopleDarkElf,
  peopleOrc,
  peopleHalfOrc,
  peopleGoblin,
  peopleOgre,
  peopleHobbit,
  peopleGnome,
  peopleMafiaDwarf,
  peopleSylderianAmazon
];