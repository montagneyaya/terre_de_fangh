import 'package:terre_de_fangh/src/data/models/creatures/player-character/job.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player-character/specializations.enum.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player-character/skills.enum.dart';

final Job jobFighter = new Job(
    'Guerrier',
    [12, 20],
    [8, 20],
    [8, 20],
    [8, 20],
    [12, 20],
    0,
    0,
    5,
    0,
    0,
    [specializationAny],
    [skillStuffingWeapons, skillInYourFace],
    [
      skillAmbidextrous,
      skillMessUp,
      skillRide,
      skillBlacksmith,
      skillIntimidate,
      skillShootProperly,
      skillPainIsForTheWeak
    ]);

final Job jobNinja = new Job(
    'Assassin',
    [8, 20],
    [8, 20],
    [8, 20],
    [13, 20],
    [8, 20],
    11,
    8,
    0,
    0,
    3,
    [specializationAny],
    [skillSilentMovement, skillLooselyHit, skillShootProperly],
    [
      skillAmbidextrous,
      skillMessUp,
      skillRide,
      skillErudition,
      skillClimb,
      skillMistrust,
      skillSwim,
      skillLikeNothing
    ]);

final Job jobRogue = new Job(
    'Voleur',
    [8, 20],
    [8, 20],
    [8, 20],
    [12, 20],
    [8, 20],
    0,
    0,
    0,
    0,
    3,
    [specializationAny],
    [skillCallForReinforcements, skillFurl, skillSilentMovement, skillDetect, skillLocksmith],
    [
      skillScamAndSwindling,
      skillDefuse,
      skillErudition,
      skillClimb,
      skillLooselyHit,
      skillDiggingThroughTrashCans,
      skillMistrust,
      skillLikeNothing
    ]);

final Job jobCleric = new Job(
    'Prêtre',
    [8, 20],
    [8, 20],
    [12, 20],
    [8, 20],
    [8, 20],
    0,
    0,
    0,
    20,
    0,
    [
      specializationAdathie,
      specializationMalgar,
      specializationYouclidh,
      specializationDlul,
      specializationSlanouch
    ],
    [skillErudition, skillMistrust, skillRecovery],
    [
      skillScamAndSwindling,
      skillRide,
      skillCook,
      skillPoppycock,
      skillFirstAid,
      skillSkinflint,
      skillWeirdRunes
    ]);

final Job jobWizard = new Job(
    'Mage',
    [8, 20],
    [12, 20],
    [8, 20],
    [8, 20],
    [8, 20],
    0,
    0,
    30,
    30,
    2,
    [
      specializationBattle,
      specializationFire,
      specializationMakeover,
      specializationThermodynamic,
      specializationInvocation,
      specializationNecromancy,
      specializationIllusion,
      specializationWaterAndIce,
      specializationEarth,
      specializationAir,
      specializationTzinntch
    ],
    [skillErudition, skillRecovery, skillWeirdRunes],
    [
      skillCallForReinforcements,
      skillGroupLeader,
      skillRide,
      skillPoppycock,
      skillMonsterLanguages,
      skillFirstAid
    ]);

final Job jobPaladin = new Job(
    'Paladin',
    [12, 20],
    [10, 20],
    [11, 20],
    [8, 20],
    [9, 20],
    0,
    0,
    2,
    10,
    0,
    [specializationDlul, specializationSlanouch, specializationBraav, specializationKhornettoh],
    [skillRide, skillIntimidate, skillRecovery],
    [skillStuffingWeapons, skillMessUp, skillErudition, skillPoppycock, skillFirstAid]);

final Job jobRanger = new Job(
    'Ranger',
    [8, 20],
    [8, 20],
    [10, 20],
    [10, 20],
    [8, 20],
    0,
    0,
    0,
    0,
    4,
    [specializationAny],
    [skillRide, skillSilentMovement, skillDetect, skillSwim, skillTrack],
    [
      skillAmbidextrous,
      skillGroupLeader,
      skillUnderstandAnimals,
      skillDefuse,
      skillErudition,
      skillClimb,
      skillMistrust,
      skillFirstAid,
      skillShootProperly
    ]);

final Job jobBard = new Job(
    'Menestrel',
    [8, 20],
    [8, 20],
    [12, 20],
    [11, 20],
    [8, 20],
    0,
    0,
    0,
    0,
    2,
    [specializationAny],
    [
      skillAttractsMonster,
      skillRide,
      skillErudition,
      skillPoppycock,
      skillJugglingAndDancing,
      skillTouchingNaivety
    ],
    [skillMistrust, skillBeggingAndWhining, skillFirstAid, skillWeirdRunes, skillShootProperly]);

final Job jobDealer = new Job(
    'Marchant',
    [8, 20],
    [12, 20],
    [11, 20],
    [8, 20],
    [8, 20],
    0,
    0,
    0,
    0,
    3,
    [specializationAny],
    [skillCallForReinforcements, skillScamAndSwindling, skillErudition, skillPoppycock, skillMistrust],
    [skillGroupLeader, skillRide, skillCook, skillBlacksmith, skillTreasureInstinct, skillWeirdRunes]);

final Job jobEngineer = new Job(
    'Ingénieur',
    [8, 20],
    [8, 20],
    [8, 20],
    [11, 20],
    [8, 20],
    0,
    0,
    0,
    0,
    3,
    [
      specializationMechanic,
      specializationDesignerBlacksmith,
      specializationCabinetmaker,
      specializationLeatherCraftsman,
      specializationTailor,
      specializationCook,
      specializationAlchemist,
      specializationDoctor,
      specializationBasketMaker,
      specializationGoblin
    ],
    [skillAmateurHandyman, skillDefuse, skillBlacksmith, skillLikeNothing, skillLocksmith],
    [skillCallForReinforcements, skillRide, skillCook, skillErudition, skillSwim, skillFirstAid]);

final Job jobPirate = new Job(
    'Pirate',
    [11, 20],
    [8, 20],
    [8, 20],
    [11, 20],
    [8, 20],
    0,
    0,
    0,
    0,
    3,
    [specializationAny],
    [
      skillCallForReinforcements,
      skillBarrelCall,
      skillScamAndSwindling,
      skillFurl,
      skillClimb,
      skillSwim
    ],
    [
      skillDetect,
      skillDiggingThroughTrashCans,
      skillTreasureInstinct,
      skillMistrust,
      skillBeggingAndWhining,
      skillShootProperly
    ]);

final Job jobBourgeois = new Job(
    'Bourgeois',
    [8, 20],
    [10, 20],
    [11, 20],
    [8, 20],
    [8, 20],
    7,
    9,
    0,
    0,
    0,
    [specializationAny],
    [skillCallForReinforcements, skillAttractsMonster, skillRide, skillErudition, skillAnnoying],
    [
      skillScamAndSwindling,
      skillGroupLeader,
      skillJugglingAndDancing,
      skillMistrust,
      skillSwim,
      skillWeirdRunes
    ]);

/*
final Job jobOfficer = new Job(
    'Officier',
    [11, 20],
    [8, 20],
    [12, 20],
    [8, 20],
    [12, 20],
    0,
    0,
    5,
    0,
    0,
    [specializationAny],
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
    ],
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

final Job jobScout = new Job(
    'Eclaireur',
    [8, 20],
    [8, 20],
    [8, 20],
    [12, 20],
    [8, 20],
    0,
    0,
    5,
    0,
    0,
    [specializationAny],
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
    ],
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

final Job jobHeavySoldier = new Job(
    'Soldat Lourd',
    [11, 20],
    [8, 20],
    [8, 20],
    [8, 20],
    [12, 20],
    0,
    0,
    5,
    0,
    0,
    [specializationAny],
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
    ],
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

final Job jobDoctor = new Job(
    'Medecin',
    [8, 20],
    [12, 20],
    [8, 20],
    [12, 20],
    [8, 20],
    0,
    0,
    5,
    0,
    0,
    [specializationAny],
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
    ],
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

final Job jobGunsmith = new Job(
    'Armurier',
    [8, 20],
    [12, 20],
    [8, 20],
    [12, 20],
    [8, 20],
    0,
    0,
    5,
    0,
    0,
    [specializationAny],
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
    ],
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
*/

final Job jobTorturer = new Job(
    'Bourreau',
    [8, 20],
    [8, 20],
    [8, 20],
    [8, 20],
    [8, 20],
    10,
    8,
    2,
    0,
    5,
    [specializationAny],
    [
      skillBarrelCall,
      skillStuffingWeapons,
      skillLooselyHit,
      skillIntimidate,
      skillMonsterLanguages,
      skillMistrust,
      skillVile,
      skillIronGrip,
      skillTormentor
    ],
    [
      skillAmateurHandyman,
      skillMessUp,
      skillRide,
      skillDetect,
      skillClimb,
      skillBlacksmith,
      skillSwim,
      skillFirstAid,
      skillShootProperly,
      skillPainIsForTheWeak
    ]);

final Job jobMyrmidon = new Job(
    'Sbire',
    [8, 10],
    [8, 11],
    [8, 11],
    [8, 20],
    [8, 20],
    9,
    9,
    0,
    0,
    0,
    [specializationAny],
    [
      skillCallForReinforcements,
      skillLooselyHit,
      skillPoppycock,
      skillDiggingThroughTrashCans,
      skillMonsterLanguages,
      skillMistrust,
      skillBeggingAndWhining,
      skillLikeNothing,
      skillMiserable,
      skillCoward,
      skillSurviving
    ],
    [
      skillAmbidextrous,
      skillAgoraphobia,
      skillBarrelCall,
      skillBellyCall,
      skillStuffingWeapons,
      skillScamAndSwindling,
      skillAttractsMonster,
      skillInYourFace,
      skillAmateurHandyman,
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
      skillSurvivalInstinct,
      skillTreasureInstinct,
      skillIntimidate,
      skillJugglingAndDancing,
      skillSwim,
      skillTouchingNaivety,
      skillAnnoying,
      skillTrack,
      skillFirstAid,
      skillSkinflint,
      skillRecovery,
      skillWeirdRunes,
      skillFeetSmell,
      skillLocksmith,
      skillHollowHead,
      skillShootProperly,
      skillFallIntoTraps,
      skillPainIsForTheWeak,
      skillVile,
      skillIronGrip,
      skillTormentor
    ]);

final Job jobAny = new Job(
    'Aucun', [8, 20], [8, 20], [8, 20], [8, 20], [8, 20], 0, 0, 0, 0, 0, [specializationAny], [], []);
