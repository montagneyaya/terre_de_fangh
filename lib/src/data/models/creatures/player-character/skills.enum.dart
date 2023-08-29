import 'package:terre_de_fangh/src/data/models/creatures/player-character/skill.dart';

final Skill skillAmbidextrous = new Skill(
    'Ambidextrie',
    '''(AD) : Pure compétence de guerrier en mêlée. À partir du niveau 2, le héros peut prendre une arme dans chaque main. En plus d'avoir l'air méchant, il pourra donner deux attaques par assaut s'il atteint ou dépasse un score d'adresse de 14. Ce qui lui donne, bien sûr, deux fois plus de chance de se blesser tout seul... Car la deuxième attaque est plus difficile à réussir. Il ne peut parer qu'une fois, ambidextre ou non.
Requis : avoir 2 armes à 1 main, minimum AD 14.
Utilisation : deuxième attaque possible à chaque assaut, avec une épreuve AT-5 / une seule parade.''',
    false);

final Skill skillAgoraphobia = new Skill(
    'Agoraphobie',
    '''(INT) : Les personnages agoraphobes ont peur des gens, de la foule. En présence d'une foule (taverne, place du marché...), à la demande du Grand Vilain MJ, le héros devra réussir une épreuve d'intelligence +4 pour garder le contrôle de lui-même. S'il échoue, il prendra la fuite et devra être convaincu par les autres de reprendre sa place dans le groupe. C'est dommage, mais c'est comme ça.
Utilisation : en milieu peuplé, épreuve INT+4 du héros pour garder son sang-froid. Échec : fuite.
Rattrapage : les équipiers peuvent tenter une épreuve de CHA pour le raisonner.''',
    false);

final Skill skillCallForReinforcements = new Skill(
    'Appel des Renforts',
    '''Cette compétence permet de fuir très vite en arrière en oubliant ses petits camarades derrière soi. Le héros qui sait fuir (dignement, bien sûr) ne sera jamais touché par des ennemis au moment de leur tourner le dos pour détaler. Bien entendu, les Barbares et les Paladins ne font jamais ça...
Utilisation : en cas de fuite d'une scène de combat, le héros ne peut être frappé par les ennemis.''',
    false);

final Skill skillSavageCall = new Skill(
    'Appel du Sauvage',
    '''(INT) : Le héros à moitié barge a vécu son enfance dans des hordes ou dans les grottes de créatures aux mœurs violentes. Si les aventuriers sont attaqués par un grand nombre d'ennemis (à partir de 5), le Grand Vilain MJ demandera au héros sauvage de faire une épreuve d'intelligence +4. S'il échoue, il rejoindra le camp adverse... Et il ne sera pas facile de le faire changer d'avis.
Utilisation : en présence de horde, épreuve INT+4 du héros pour garder son sang-froid. Échec : le héros devient ennemi.
Rattrapage : les équipiers peuvent tenter une épreuve de CHA pour le raisonner.''',
    false);

final Skill skillBarrelCall = new Skill(
    'Appel du Tonneau',
    '''(INT) : L'alcool attire le héros, s'il ne parvient pas à résister à son instinct de poivrot. Il devra passer une épreuve d'intelligence +4 pour s'en sortir... Ou décidera de s'adonner à la boisson, quitte à finir allongé dans son vomi. C'est vraiment la honte.
Utilisation : en présence d'alcool, épreuve INT+4 du héros pour ne pas s'enivrer. Échec : le héros finit bourré.
Rattrapage : à moins d'utiliser la force, on ne peut pas tenter de raisonner un ivrogne.''',
    false);

final Skill skillBellyCall = new Skill(
    'Appel du Ventre',
    '''(INT) : Certaines personnes ont besoin de manger souvent. Le héros qui subit l'appel du ventre doit trouver à manger de façon régulière. S'il n'a pas ses trois repas par jour, il devra résister à l'envie de piquer la nourriture de ses camarades, ou même à la tentation de leur manger un bras. Il sera bon pour une épreuve d'intelligence +4. S'il échoue, ça risque de causer quelques problèmes !
Utilisation : en manque de nourriture, épreuve INT+4 du héros pour rester calme. Échec : il veut manger ses amis.
Rattrapage : épreuve de CHA (difficile) pour le convaincre ou épreuve de FO (difficile) pour le ceinturer.''',
    false);

final Skill skillStuffingWeapons = new Skill(
    'Arme de Bourrin',
    '''Le personnage est capable d'utiliser toutes les armes qui sont lourdes et font très mal, comme les grosses haches, les grosses épées, les grosses massues... En bref, ils ont la capacité d'utiliser des armes portant l'étiquette « à deux mains ». Cette compétence n'est pas utilisable par les Nains et certaines autres créatures.
Requis : avoir la force nécessaire (donc, n'avoir pas de restriction d'origine sur les armes à deux mains).
Utilisation : peut s'équiper d'armes à deux mains et les utiliser (une à la fois !).''',
    false);

final Skill skillScamAndSwindling = new Skill(
    'Arnaque et Carambouille',
    '''Il faut parfois faire des concessions à la moralité pour augmenter ses revenus. Le personnage arnaqueur obtiendra une remise de 20% sur le prix à l'achat d'objets neufs, sans faire la moindre épreuve au dé. Il est libre ensuite d'en profiter pour faire du trafic au sein du groupe, à condition que le marchand ne flaire pas l'arnaque (sur décision du MJ). Il peut gagner également 10% sur la revente de matériel usagé (butin), mais il faut savoir que le prix de components d'un matériel revendu est toujours diminué d'au moins 50% par rapport au neuf.
Utilisation : en boutique ou en négociation, obtient une remise de 20% sur le prix d'achat, 10% à la revente.
Roleplay : pas d'épreuve au dé, mais le joueur doit convaincre le MJ avec un discours abracadabrant !''',
    false);

final Skill skillAttractsMonster = new Skill(
    'Attire les Monstres',
    '''Le héros qui attire les monstres sera toujours le premier visé dans le cas où une bestiole ou un méchant doit faire un choix de victime. Dommage pour lui, il a sans doute une tête à baffes !
Utilisation : dans le cas d'une rencontre avec des ennemis, le héros est attaqué en premier.''',
    false);

final Skill skillInYourFace = new Skill(
    'Bourre-Pif',
    '''L’art du bourre-pif consiste à taper n’importe comment avec les poings de manière efficace. Casser un bras ou se battre avec un tabouret rentre dans la compétence bourre-pif. Le personnage adepte du bourre-pif n'aura pas de malus à son score d'attaque, pourra utiliser la « table des critiques à mains nues » ainsi que les « coups spéciaux à mains nues ». Voir à ce sujet la page 13 du document des règles de components.
Utilisation : pas de malus au score AT, dégâts de components 1D6, coups critiques, accès aux coups spéciaux.''',
    false);

final Skill skillAmateurHandyman = new Skill(
    'Bricolo du Dimanche',
    '''(AD) : À l'aide de cette compétence, un personnage pourra tenter de réparer ou de fabriquer des objets rudimentaires, pour peu qu'il réussisse une épreuve d'adresse, et sans avoir besoin de connaître le sujet en particulier. C'est au Grand Vilain MJ de s'arranger pour que la difficulté de l'épreuve soit adaptée au profil du héros ainsi qu'à l'objet désiré. Un gobelin fabriquera plus facilement une baliste qu'un nécessaire de coiffure ! Il aura bien entendu besoin d'un certain nombre d'outils et de matériel de construction.
Utilisation : fabrication ou réparation possible d'armes rudimentaires, de matériel varié, consolidation : épreuve AD.''',
    false);

final Skill skillWinnerSLuck = new Skill(
    'Chance du Rampailleur',
    '''Le personnage qui n'a que des caractéristiques pourries peut bénéficier de cette compétence, sur décision du Grand Vilain MJ. Les dieux sont parfois cléments avec ceux qui ont une existence difficile. Le personnage bénéficiant de la chance du rempailleur ne pourra mourir dans un combat, il se passera toujours quelque chose de bizarre au moment on son énergie vitale approche de zéro... Il peut en revanche mourir de maladie ou d'accident.''',
    false);

final Skill skillGroupLeader = new Skill(
    'Chef de Groupe',
    '''Le héros pense qu'il est un bon chef, et il arrive même à en convaincre les autres. Il lui est donc plus facile d'imposer son avis quand le groupe doit prendre une décision, qu'elle soit bonne ou mauvaise.
Utilisation : le vote du chef du groupe compte pour 2 voix, et s'il y a égalité, c'est le chef de groupe qui a raison.''',
    false);

final Skill skillMessUp = new Skill(
    'Cherher des Noises',
    '''À moins d'être surpris, le personnage qui sait chercher des noises frappe toujours en premier quand il se retrouve au corps-à-corps avec un ennemi. Ceci évite de confronter les scores de courage, et ça peut faire la différence contre quelqu'un qui a une plus grosse épée.
Utilisation : le héros a l'initiative sur tous les combats au corps-à-corps.''',
    false);

final Skill skillRide = new Skill(
    'Chevaucher',
    '''(AD, CHA) : Permet de monter à cheval sans subir le courroux de la bête, sans faire d'épreuve particulière. Chevaucher permet aussi de prétendre pouvoir s'installer sur le dos d'un certain nombre d'autres montures, comme le Chapon Fanghien, le Sanglier de Combat... Au prix d'une épreuve d'adresse ou de charisme plus difficile à la discrétion du Grand Vilain MJ. Pour les autres, c'est souvent « non, moi je vais marcher ».
Utilisation : le héros peut utiliser une monture classique sans être ridicule et sans tomber au moindre mouvement.''',
    false);

final Skill skillFurl = new Skill(
    'Chouraver',
    '''(AD) : Cette compétence permet à son possesseur de faire les poches de ses petits camarades sans être repéré ou de piquer sans complexe des choux sur le marché. Un chouraveur a rarement beaucoup d'amis, et peut coupler sa compétence avec « Appel des renforts » pour assurer ses chances de survie. Il aura un bonus de +4 aux épreuves d'adresse impliquant un larcin.
Utilisation : bonus +4 sur les épreuves AD de vol à la tire, n'impliquant pas de violence.''',
    false);

final Skill skillUnderstandAnimals = new Skill(
    'Comprendre les Animaux',
    '''(INT) : Le héros peut être fier de cette excellente compétence : grâce à elle, il peut tenter d'instaurer un dialogue avec une mouette, des souris, un chat, une belette ou tout autre animal possédant un embryon de cerveau. Le Vilain MJ devra s'assurer de lui prévoir un épreuve d'intelligence à la hauteur de la tâche. Une fois le dialogue établi, le personnage peut bien sûr essayer d'en faire un animal familier !''',
    false);

final Skill skillCook = new Skill(
    'Cuistot',
    '''(AD) : C'est l'ami de tout le monde, ce cuistot ! Grâce à ses talents, il peut préparer à manger pour tous ses amis en utilisant quelques ingrédients de components, et en plus, c'est bon ! Chaque repas préparé par le cuistot permettra de récupérer 2PV au lieu d'un seul. De plus, on n'attrape pas de maladie liée à la nourriture. Pas d'épreuve nécessaire.
Requis : disposer d'ingrédients et de matériel de cuisine, avoir 30 minutes pour cuisiner.
Utilisation : +1PV de récupération sur un repas pour toute l'équipe. Pas d'épreuve.''',
    false);

final Skill skillSilentMovement = new Skill(
    'Déplacement Silencieux',
    '''(AD) : Pour se glisser derrière quelqu'un sans être vu et lui dérober les clés de la prison, rien de tel qu'un spécialiste du déplacement silencieux... Celui qui dispose de cette compétence aura un bonus de +4 à son épreuve d'adresse.
Utilisation : bonus +4 sur les épreuves AD de dissimulation et furtivité.''',
    false);

final Skill skillDefuse = new Skill(
    'Désamorcer',
    '''(AD) : Le personnage spécialiste en désamorçage dispose d'un bonus de +4 à l'épreuve d'adresse pour débarrasser une porte, un couloir ou un coffre de n'importe quel mécanisme douloureux. Il doit cependant l'avoir détecté avant (lui ou quelqu'un du groupe), en annonçant une détection des pièges et en réussissant son épreuve !
Utilisation : bonus +4 sur les épreuves AD pour désamorcer un piège.''',
    false);

final Skill skillDetect = new Skill(
    'Détecter',
    '''(INT) : Le héros dispose de sens aiguisés et d'une bonne faculté d'analyse, et ce n'est pas le genre à marcher n'importe où. Il dispose d'un bonus de +2 à l'épreuve d'intelligence pour déceler les pièges et les chausse-trappes, les ennemis cachés, les embuscades, les environnements risqués. L'action de détecter n'est pas automatique et doit être annoncée par le héros.
Utilisation : bonus +2 sur les épreuves INT pour détecter les pièges ou le danger.''',
    false);

final Skill skillErudition = new Skill(
    'Erudition',
    '''(INT) : Quand on a une certaine éducation, il y a des choses qu'on peut faire assez facilement. Le héros qui dispose de l'érudition saura lire (la langue de components), écrire et compter, sans avoir à passer d'épreuve. Un héros qui n'a pas reçu l'érudition ne saura faire ni l'un ni l'autre (ou alors seulement lire du texte de components, avec une épreuve INT).
Utilisation : le personnage sait lire, écrire et compter.''',
    false);

final Skill skillClimb = new Skill(
    'Escalader',
    '''(AD) : Spider-Man triche, il a les mains qui collent ! Mais cette compétence permet d’éviter les chutes désastreuses avec talent, lorsqu'on déambule sur une corniche, qu'on attaque une falaise par la face nord ou qu'on se retrouve suspendu entre ciel et terre par une toute petite corde.
Utilisation : bonus +3 sur les épreuves AD pour l'escalade et les numéros de monte-en-l'air.''',
    false);

final Skill skillBlacksmith = new Skill(
    'Forgeron',
    '''(AD) : Le héros forgeron peut réparer et améliorer des armes de métal, et comme c'est un talent plutôt rare, peut en profiter pour faire payer ses services. Une épreuve d'adresse est nécessaire à la réussite d'une quelconque manipulation. La difficulté sera dosée en fonction du contexte par le Grand Vilain MJ, dans sa grande magnificence.
Utilisation : aiguiser ou réparer une arme, améliorer une arme avec épreuve AD (voir tableau correspondant).''',
    false);

final Skill skillLooselyHit = new Skill(
    'Frapper Lâchement',
    '''(AT) : Quand on n'a pas la force nécessaire pour battre un adversaire au corps à corps et qu’on a le sens moral d’un chacal, on a toujours le choix de feindre le sourire et de frapper de le dos. Cette compétence permet de doubler les dégâts d’une attaque lorsque celle-ci est placée dans le dos, par une bonne connaissance des points vitaux. Mais cela n'est possible qu'une seule fois par combat car l'ennemi ne se fait pas prendre deux fois à ce genre de jeu. Il faut tout de même réussir son attaque... et se mettre en position au préalable. La parade est impossible.
Requis : avoir une dague, poignard ou autre lame courte - se placer dans le dos de la cible.
Utilisation : une fois les dégâts de l'arme calculés sur une attaque réussie, multipliez le total par 2.
Restrictions : une seule fois par combat, non cumulable avec « ambidextrie », ne fonctionne que sur les humanoïdes de taille standard (pas sur les monstres, esprits, animaux et autres) – dague ou autres lames courtes uniquement.''',
    false);

final Skill skillPoppycock = new Skill(
    'Fariboles',
    '''(INT, CHA) : Ce talent particulier permet de baratiner n’importe qui en le noyant sous un flot d’histoires invraisemblables. C'est très utile pour distraire des ennemis potentiels (à condition qu'ils ne soient pas en combat), captiver une foule, énerver les gens, faire perdre du temps à quelqu'un, déstabiliser, marchander. Le héros maîtrisant l'art des
  fariboles doit bien sûr impressionner les joueurs autour de la table, en racontant ses histoires dans la vraie vie ! Il aura un bonus de +3 aux épreuves de charisme ou d'intelligence liées à cette compétence.
Utilisation : +3 aux épreuves de CHA ou INT pour faire croire n'importe quoi à quelqu'un.
Roleplay : le joueur doit également convaincre le MJ avec son discours original !''',
    false);

final Skill skillDiggingThroughTrashCans = new Skill(
    'Fouiller dans les Poubelles',
    '''Le héros n'a pas d'amour-propre. Il a l'habitude de faire son marché dans les détritus, et sera toujours le premier à trouver un objet intéressant lorsqu'il fouillera une salle, un coffre, un trésor ou n'importe quoi (même une poubelle, d'ailleurs). Si plusieurs aventuriers ont cette compétence, ils peuvent régler l'affaire avec un duel au dé.
Utilisation : en cas de fouille d'un lieu ou d'un cadavre, le héros est le premier à trouver le meilleur butin.''',
    false);

final Skill skillSurvivalInstinct = new Skill(
    'Instinct de Survie',
    '''Le héros dispose d'un flair particulier : il trouve de la nourriture ou de la boisson quand il y en a quelque part. Il peut ainsi guider tout un groupe d'aventuriers vers la cuisine du donjon.
Utilisation : si le héros annonce qu'il suit son instinct de survie, le MJ devra le guider vers la nourriture/boisson proche.''',
    false);

final Skill skillTreasureInstinct = new Skill(
    'Instinct du Trésor',
    '''(INT) : Le héros a du flair pour trouver les choses cachées, surtout quand elles ont de la valeur ! Cette compétence donne un bonus de +3 aux épreuves d'intelligence pour sentir les trésors et cachettes.
Utilisation : +3 à l'épreuve INT sur une épreuve de fouille ou détection de trésor/cachette.''',
    false);

final Skill skillIntimidate = new Skill(
    'Intimider',
    '''(COU, CHA) : Quand on se retrouve face à un gros costaud qui fait la grimace et approche son visagen furieux de votre nez avec l’apparente attention de vous accrocher la tête au bout d’une pique, on a souvent deux choix : se battre ou fuir. L’intimidation permet au personnage de faire peur à ses adversaires sans avoir besoin de les combattre. Il doit pour cela disposer d'une valeur de courage supérieure à son (ou ses) ennemis, et réussir une épreuve de charisme !
Utilisation : épreuve de CHA possible pour faire fuir un adversaire moins courageux que le héros.''',
    false);

final Skill skillJugglingAndDancing = new Skill(
    'Jonglage et Danse',
    '''(AD) : Ces trucs, ça ne s'invente pas, c'est un don. Le héros capable de danser et de jongler pourra souvent distraire les gens, gagner de l'argent ou obtenir des faveurs avec une épreuve d'adresse. Pour les autres, ils pourront se rendre ridicule, mais c'est tout.
Utilisation : possibilité d'essayer des prestations artistiques sans malus à l'épreuve AD.''',
    false);

final Skill skillMonsterLanguages = new Skill(
    'Langue des Monstres',
    '''Les monstres disent n'importe quoi, c'est bien connu. Pour le héros qui a fait des études dans ce domaine, pas de problème ! Il comprendra les propos de la plupart des créatures douées de parole : les ogres, les trolls, les gnômes des forêts du nord, les kobolds, etc.
Utilisation : compréhension générale des langues de monstres sans épreuve.''',
    false);

final Skill skillMistrust = new Skill(
    'Méfiance',
    '''(INT) : Quand le héros discute avec un personnage au cours d'une aventure, il peut utiliser la compétence de méfiance pour détecter si le personnage ment, ou pas. S'il réussit l'épreuve, le Grand Vilain MJ lui dira si c'est le cas. S'il échoue en revanche, il pourra lui raconter n'importe quoi...
Utilisation : possibilité de tenter une épreuve d'INT pour savoir si un PNJ ment.''',
    false);

final Skill skillBeggingAndWhining = new Skill(
    'Mandier et Pleurnicher',
    '''(INT) : Cette compétence permet au héros de gagner quelques pièces d'or entre deux aventures, sans rien faire... Le montant sera tiré au dé, sur une décision du Grand Vilain MJ.
Utilisation : gagner de l'or entre deux aventures, sur jet de dé (1D20 PO max.).''',
    false);

final Skill skillSwim = new Skill(
    'Nager',
    '''(AD, FO) : Pas besoin de faire un dessin, le héros aura eu la chance d'apprendre à nager pendant sa jeunesse. Il bénéficie donc, non seulement de la possibilité de nager sans jeter un dé, mais d'un bonus de +5 aux épreuves liées à la nage (comme par exemple, essayer de sauver un équipier tombé dans la rivière).
Utilisation : possibilité de nager, +5 à l'épreuve AD sur une épreuve impliquant de la nage.''',
    false);

final Skill skillTouchingNaivety = new Skill(
    'Naïveté Touchante',
    '''(CHA) : Le personnage naïf est si mignon que les autres gens (joueurs et non joueurs) lui pardonnent plus aisément un acte stupide, ou des paroles déplacées. Il dispose d'un bonus de +5 à l'épreuve de charisme pour sauver sa peau dans ce genre de situation.
Utilisation : +5 à l'épreuve CHA pour éviter un conflit suite à un problème ou une bévue impliquant le héros.
Roleplay : le joueur doit trouver une excuse bidon !''',
    false);

final Skill skillAnnoying = new Skill(
    'Pénible',
    '''(INT) : Le héros est chiant, même quand il ne dit rien. Il agace les gens, aussi bien les aventuriers de sa compagnie que les personnages rencontrés au cours du jeu. Le Grand Vilain MJ peut lui demander de faire une épreuve d'intelligence dans ce genre de cas, pour savoir s'il se fait frapper ou non.
Utilisation : en cours de partie, le MJ décide que le héros a été chiant et que ses compagnons sont fâchés. Le héros peut essayer de sauver la situation en réussissant une épreuve INT (sans quoi, il se fait frapper).''',
    false);

final Skill skillTrack = new Skill(
    'Pister',
    '''(INT) : Tout le monde peut suivre un troll à la trace, vu que généralement tout est cassé sur son chemin, mais pister peut également servir à poursuivre des animaux ou des adversaires beaucoup plus discrets, en se repérant à tous les signaux qu’ils ont pu laisser derrière eux. La compétence permet de bénéficier d'un bonus de +3 aux épreuves liées à cette discipline. Il est interdit de dire « Moi j'ai envie de pister ».
Utilisation : +3 à l'épreuve INT sur une épreuve de pistage.''',
    false);

final Skill skillFirstAid = new Skill(
    'Premiers Soins',
    '''(AD, INT) : Le personnage maîtrisant les premiers soins aura plein d'amis ! Il peut faire récupérer quelques points de vie à ses camarades tombés au combat, pour peu qu'il réussisse une épreuve de moyenne AD/INT. Le Grand Vilain MJ prendra soin d'augmenter ou de diminuer la difficulté en fonction de la blessure.
Utilisation : épreuve AD possible pour tenter de soigner quelqu'un (max 1D6 PV).
Particularité : sur un échec critique, le héros parvient à blesser encore plus son compagnon (-1D6 PV).''',
    false);

final Skill skillSkinflint = new Skill(
    'Radin',
    '''(CHA, INT) : Cette compétence est innée chez les Nains... Le héros radin disposera d'un bonus de +4 sur son épreuve de charisme pour marchander (dans la limite d'une remise de 20%, non cumulable avec d'autres bonus). En contrepartie, il devra passer une épreuve d'intelligence +4 quand il faut partager un butin ou une dépense avec le reste du groupe. S'il échoue, il y aura sans doute un conflit à régler !
Utilisation : +4 à l'épreuve CHA pour le marchandage, épreuve nécessaire INT+4 en cas de partage de butin (conflit).''',
    false);

final Skill skillRecovery = new Skill(
    'Récupération',
    '''(PA) : Les mages, les prêtres et les paladins ont besoin de se poser 1H par jour pour réviser leurs sortilèges ou prier. C'est comme ça... Et ce n'est pas la peine d'essayer d'y couper. Ils peuvent le faire à la place du repos, au détriment de la récupération d'un certain nombre de points de vie (voir les règles de récupération).
Utilisation : obligation de faire une pause chaque jour pour continuer à pratiquer la magie / les prodiges. Récupère 4PA.''',
    false);

final Skill skillLikeNothing = new Skill(
    'Ressembler à Rien',
    '''Il est des gens dont personne ne se souvient, qui passent inaperçus. Le héros qui ne ressemble à rien dispose de ce talent. Certes, il ne sert pas à grand-chose, mais un jour il pourra peut-être lui sauver la vie, par exemple s'il est recherché par des gardes et qu'ils tombent sur lui par hasard.
Utilisation : les PNJs ne se souviennent pas du héros.''',
    false);

final Skill skillWeirdRunes = new Skill(
    'Runes Bizarres',
    '''(INT) : Le héros disposant de cette compétence peut interpréter les écritures les plus étranges de la Terre de Fangh, pour peu qu'il réussisse une épreuve d'intelligence +4. Les autres, c'est pas de chance, ils n'ont même pas le droit d'essayer.
Utilisation : +4 à l'épreuve INT pour lire les langues bizarres.''',
    false);

final Skill skillFeetSmell = new Skill(
    'Sentir des Pieds',
    '''Le héros concerné, s'il enlève ses bottes, éloigne les animaux (dangereux ou pas) quand il dort en milieu naturel. Dans une chambre d'auberge ou un dortoir, il incommode les autres équipiers qui dormiront moins bien (récupération moins bonne). Les équipiers qui sentent eux-mêmes des pieds ne sont pas incommodés.
Utilisation : éloigne les prédateurs la nuit en bivouac, mais diminue le confort des chambres partagées par les alliés.''',
    false);

final Skill skillLocksmith = new Skill(
    'Serrurier',
    '''(AD) : Dans certains villages éloignés de Fangh, les élèves serruriers sont souvent automatiquement pendus de manière préventive. En effet, dans un cas sur deux, ce n’est pas le noble art de la fabrication de serrure qui intéressent les apprentis mais bien comment fracturer le coffre du commerçant d’en face sans faire de bruit. La compétence de serrurier permet de pouvoir ouvrir n’importe quel porte ou mécanisme fonctionnant avec une serrure, avec une épreuve d'adresse. Ceux qui n'ont pas la compétence auront le droit d'essayer, mais le Grand Vilain MJ leur rendra la vie dure avec une épreuve beaucoup plus ardue.
Utilisation : épreuve AD possible pour tenter de crocheter une porte, un mécanisme.''',
    false);

final Skill skillHollowHead = new Skill(
    'Tête Vide',
    '''Les sorts affectant le psychique n'ont pas prise sur ce héros, car il ne dispose pas du capital nécessaire. C'est le cas des sorts de prise de contrôle, de terreur, d'illusion, de télépathie.
Utilisation : résiste automatiquement à certains types de sortilèges, illusions ou malédictions.''',
    false);

final Skill skillShootProperly = new Skill(
    'Tirer Correctement',
    '''(AD) : Tirer correctement permet d’utiliser une arme comme l’arc, le couteau de jet ou l’arbalète de manière efficace, avec une épreuve d'adresse. Pour donner un exemple, prenez l’elfe, et bien c’est exactement le contraire. Clair non ? Les gens qui n'ont pas cette compétence peuvent toujours essayer, mais le Grand Vilain MJ leur donnera du fil à retordre avec une épreuve plus difficile. De toutes façons, le fait d'avoir la compétence n'empêche pas de tirer accidentellement sur les petits copains...
Utilisation : épreuve AD possible pour utiliser des armes de jet.''',
    false);

final Skill skillFallIntoTraps = new Skill(
    'Tomber dans les Pièges',
    '''Une fois qu'il se retrouve affublé de cette tare grotesque, le héros sera toujours le premier à tomber dans un piège, dans le cas ou un groupe d'aventuriers marche dedans sans le détecter. Il n'avait qu'à faire attention. Si plusieurs aventuriers ont cette compétence, ils peuvent régler l'affaire avec un duel au dé.
Utilisation : le héros se prend toujours le piège en premier.''',
    false);

final Skill skillPainIsForTheWeak = new Skill(
    'Truc de Mauviette',
    '''(PR) : Le héros n'a pas mal, même quand il a mal. Il serre les dents et continue de faire son malin, parce que la douleur est une simple information. Le héros qui rit des trucs de mauviette dispose d'une protection naturelle de 1 point supplémentaire (PR+1).
Utilisation : +1 au score de PR totale, mais ce bonus ne compte pas dans l'encombrement.''',
    false);

final Skill skillSuperPowerful = new Skill(
    'Super Bourrin',
    '''(spéciale) : celui qui tente de parer une attaque d'un ogre « super bourrin » a un malus de PRD-5''',
    false);

final Skill skillAttackLeap = new Skill(
    'Bond d\'Attaque',
    '''(spécial) : UNE FOIS PAR COMBAT. Technique agile surprenante permettant de se rapprocher rapidement et d'attaquer une cible distante de moins de huit mètres au cours du même assaut – donne également l'initiative sur cet assaut.''',
    false);

final Skill skillSly = new Skill(
    'Roublard',
    '''(spécial) : formation au combat sournois qui donne un bonus de +1 à tous les dégâts portés avec des armes de contact OU un bonus de +2 si ces dégâts sont portés dans le dos ou sur les flancs d'un adversaire humanoïde. Cette compétence octroie également un bonus de +1 à l'esquive (mais sans en changer les règles...).''',
    false);

final Skill skillLongWeapons = new Skill(
    'Armes Longues',
    '''(spécial) : l'amazone est entraînée à manier toutes les armes à deux mains – elle ignore les malus AT et AD éventuels de ces armes. En revanche, elle écope d'un malus AT/PRD-2 en utilisation d'armes à une main.''',
    false);

final Skill skillFierceBeauty = new Skill(
    'Beauté Féroce',
    '''(spécial) : le physique de l'amazone impressionne les hommes et les empêche d'être efficaces contre elle. Les mâles humains, nains, barbares, semi-hommes, elfes ou hybrides d'elfes, orques ou hybrides d'orques qui l'affrontent directement reçoivent -1 à toutes leurs caractéristiques (pour les actions contre l'amazone) à moins de réussir une épreuve INT au tout début de la rencontre.''',
    false);

final Skill skillIgnorant = new Skill(
    'Ignorante',
    '''(spécial) : ayant grandi loin de toute civilisation, l'amazone ne connaît rien au commerce, au marchandage, aux combines politiques ou aux blagues. Elle ne sait pas compter, n'apprendra jamais à lire et il est possible qu'elle se fasse arnaquer par n'importe qui.''',
    false);

final Skill skillSurvivor = new Skill(
    'Survivante',
    '''(spécial) : l'amazone sait éviter les coups et elle a +1 à l'esquive. Grâce à l'allonge de son arme, après une esquive, l'amazone a 50% de chance de pouvoir tout de même attaquer à l'assaut suivant (4, 5 ou 6 au D6). De plus, si elle achève un ennemi, elle récupère 2 PV.''',
    false);

final Skill skillVile = new Skill(
    'Infâme',
    '''(spécial) : mauvaise réputation. CHA-3 pour toutes les épreuves de séduction (y compris le marchandage) mais, en contrepartie, CHA+2 pour toutes les épreuves visant à déstabiliser ou intimider les gens (et donc, +2 à la compétence « Intimider »).''',
    false);

final Skill skillIronGrip = new Skill(
    'Poigne de Fer',
    '''(spécial) : fonctionne contre les humanoïdes de taille standard uniquement. Avec cette technique, le bourreau peut essayer, au lieu d'une attaque, de saisir la cible en réussissant une épreuve de moyenne FO/AD. Sur une cible ainsi bloquée, il aura ensuite à chaque attaque un bonus AT+2 et +2 PI, mais ne pourra utiliser qu'une arme à une main et ne pourra pas esquiver ni parer. La cible pourra choisir de se dégager à chaque assaut (au lieu d'attaquer) en réussissant à son tour une épreuve de moyenne FO/AD.''',
    false);

final Skill skillTormentor = new Skill(
    'Tortionnaire',
    '''(spécial) : s'applique uniquement contre des cibles humanoïdes standard. Avec sa connaissance poussée de l'anatomie, et, le bourreau frappe à 1D6+1 (de components) aux dégâts à mains nues, et peut utiliser les coups spéciaux et les critiques à mains nues. Il hérite également d'un bonus de +2 PI avec des armes de récupération (des armes qui ne sont pas de vraies armes comme par exemple un tisonnier, une bouteille...) et +1 PI avec les autres armes de contact.''',
    false);

final Skill skillMiserable = new Skill(
    'Misérable',
    '''(spécial) : en premier effet, si le personnage a trois caractéristiques de components inférieures ou égales à 10, il gagne définitivement la compétence « Chance du rempailleur ». En deuxième effet, le sbire est insignifiant, de sorte qu'il gagne +2 à toutes ses épreuves de discrétion et de larcin. En troisième effet, son côté misérable lui permet d'avoir un bonus de +2 aux épreuves de marchandage, mais un malus de -4 aux autres épreuves de charisme « social ». Enfin, en dernier lieu, si un opposant doit choisir d'attaquer un membre du groupe, le sbire aura toujours moins de chances que les autres d'être choisi.''',
    false);

final Skill skillCoward = new Skill(
    'Pleutre',
    '''(spécial) : dans le combat au contact, le sbire peut déconcerter l'adversaire par sa manière inhabituelle de combattre en usant des techniques lâches et des mouvements désordonnés. Ainsi donc, chaque fois qu'il réussit une ESQUIVE ou une PARADE contre un opposant, ce dernier devra lancer 1D6 : sur 1 à 3 il ne se passe rien ; sur 4 l'ennemi perd un assaut à se poser des questions, sur 5 l'ennemi se décourage et change de cible ; sur 6 l'ennemi doit tirer une maladresse AT/PRD.''',
    false);

final Skill skillSurviving = new Skill(
    'Survivaliste',
    '''(spécial) : généralement brimé, le sbire est habitué aux privations diverses et aux conditions de vie précaires. Il récupère donc 1 PV supplémentaire par heure de sommeil, et n'a besoin de manger que deux rations par jour.''',
    false);

final List<Skill> skillEnum = [
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
  skillWinnerSLuck,
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
  skillSuperPowerful,
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
  skillSurviving,
];
