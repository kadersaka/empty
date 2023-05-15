import 'dart:ui';

import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

import '../entities/interest.dart';
import '../entities/subject.dart';
import '../entities/trade.dart';
import '../entities/trend_model.dart';
import '../entities/university.dart';
import '../entities/university_level.dart';

final List<University> UNIVERSITY_LIST = [
  // University(name: "Jericho", place: "UK", website: "www.jericho.com", domaine: "jericho.com"),
  // University(name: "Jericho", place: "UK", website: "www.jericho.com", domaine: "jericho.com"),
  // University(name: "Jericho", place: "UK", website: "www.jericho.com", domaine: "jericho.com"),
  // University(name: "Jericho", place: "UK", website: "www.jericho.com", domaine: "jericho.com"),
];

List<UniversityLevel> UNIVERSITY_LEVEL_LIST = [UniversityLevel(id: 1, name: "1st Year"), UniversityLevel(id: 3, name: "3rd Year"),  UniversityLevel(id: 4, name: "4th Year"), UniversityLevel(id: 5, name: "Master"), UniversityLevel(id: 6, name: "PhD"), UniversityLevel(id: 7, name: "Staff"),  UniversityLevel(id: 8, name: "Alumni"),  ];
List<Subject> SUBJECT_LIST = [Subject(id: 1, name: "Math"), Subject(id: 3, name: "Economy"),  Subject(id: 4, name: "Art"), Subject(id: 5, name: "History"), Subject(id: 6, name: "Psychology"), Subject(id: 7, name: "Physics"),  Subject(id: 8, name: "Computer science"),  Subject(id: 8, name: "Human centered design"),  ];
List<Interest> INTEREST_LIST = [Interest(id: 1, name: "BasketWeaving"), Interest(id: 3, name: "BaseBall"),  Interest(id: 4, name: "Travel"), Interest(id: 5, name: "HipHop"), Interest(id: 6, name: "Yoga"), Interest(id: 7, name: "Cooking"),  Interest(id: 8, name: "Math Tutoring"),  ];
List<Trade> TRADE_LIST = [Trade(id: 1, name: "Time"), Trade(id: 3, name: "Skills"),  Trade(id: 4, name: "Knowledge"), Trade(id: 5, name: "Items"), Trade(id: 6, name: "Tuturing"), Trade(id: 7, name: "Cooking"),  Trade(id: 8, name: "Handy work"),  ];
List<TrendModel> TRENDS_LIST = [
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
  TrendModel(about: "about", lastPostBy: DateTime.now().microsecondsSinceEpoch, avatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", memberCount: 0, contributorCount: 1, trustCount: 1, member: false, place: "Bristol", lastPostByName: "Kader SAKA", lastPostByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", viewCount: 10, id: 1, placeName: "Bristol", createdBy: 1, createdByAvatarURL: "https://www.flaticon.com/free-icon/search_4484610?related_id=4484610&origin=pack", createdByName: "Admin", created: DateTime.now().microsecondsSinceEpoch, private: false, name: "Study Group"),
];
const OFFER_STATUS_CREATED = "created";
const OFFER_STATUS_ACCEPTED = "accepted";
const OFFER_STATUS_REJECTED = "rejected";
const OFFER_STATUS_COMPLETED = "completed";

const int OFFER_STATUS_CREATED_ID = 5645457309040640;
const int OFFER_STATUS_ACCEPTED_ID = 5766338760933376;
const int OFFER_STATUS_REJECTED_ID = 5735076516069376;
const int OFFER_STATUS_COMPLETED_ID = 5118151121436672;

List<Map<String, dynamic>> colorNames = [
  {"name": "WarmFlame", "color": GradientColors.warmFlame},
  {"name": "NightFade", "color": GradientColors.nightFade},
  {"name": "SpringWarmt", "color": GradientColors.springWarmt},
  {"name": "JuicyPeach", "color": GradientColors.juicyPeach},
  {"name": "LadyLips", "color": GradientColors.ladyLips},
  {"name": "SunnyMorning", "color": GradientColors.sunnyMorning},
  {"name": "RainyAshville", "color": GradientColors.rainyAshville},
  {"name": "FrozenDreams", "color": GradientColors.frozenDreams},
  {"name": "WinterNeva", "color": GradientColors.winterNeva},
  {"name": "DustyGrass", "color": GradientColors.dustyGrass},
  {"name": "TemptingAzure", "color": GradientColors.temptingAzure},
  {"name": "HeavyRain", "color": GradientColors.heavyRain},
  {"name": "AmyCrisp", "color": GradientColors.amyCrisp},
  {"name": "MeanFruit", "color": GradientColors.meanFruit},
  {"name": "LightBluee", "color": GradientColors.lightBluee},
  {"name": "RipeMalinka", "color": GradientColors.ripeMalinka},
  {"name": "CloudyKnoxville", "color": GradientColors.cloudyKnoxville},
  {"name": "MalibuBeach", "color": GradientColors.malibuBeach},
  {"name": "NewLife", "color": GradientColors.newLife},
  {"name": "TrueSunset", "color": GradientColors.trueSunset},
  {"name": "MorpheusDen", "color": GradientColors.morpheusDen},
  {"name": "RareWind", "color": GradientColors.rareWind},
  {"name": "WildApple", "color": GradientColors.wildApple},
  {"name": "PlumPlate", "color": GradientColors.plumPlate},
  {"name": "EverlastingSky", "color": GradientColors.everlastingSky},
  {"name": "HappyFisher", "color": GradientColors.happyFisher},
  {"name": "BlessingGet", "color": GradientColors.blessingGet},
  {"name": "SharpeyeEagle", "color": GradientColors.sharpeyeEagle},
  {"name": "LiadogaBottom", "color": GradientColors.liadogaBottom},
  {"name": "LemonGate", "color": GradientColors.lemonGate},
  {"name": "ItmeoBranding", "color": GradientColors.itmeoBranding},
  {"name": "ZeusMiracle", "color": GradientColors.zeusMiracle},
  {"name": "DeepBlue", "color": GradientColors.deepBlue},
  {"name": "HappyAcid", "color": GradientColors.happyAcid},
  {"name": "AwesomePine", "color": GradientColors.awesomePine},
  {"name": "NewYork", "color": GradientColors.newYork},
  {"name": "MixedHopes", "color": GradientColors.mixedHopes},
  {"name": "FlyHigh", "color": GradientColors.flyHigh},
  {"name": "FreshMilk", "color": GradientColors.freshMilk},
  {"name": "SnowAgain", "color": GradientColors.snowAgain},
  {"name": "FebruaryInk", "color": GradientColors.februaryInk},
  {"name": "KindSteel", "color": GradientColors.kindSteel},
  {"name": "SoftGrass", "color": GradientColors.softGrass},
  {"name": "GrownEarly", "color": GradientColors.grownEarly},
  {"name": "SharpBlues", "color": GradientColors.sharpBlues},
  {"name": "ShadyWater", "color": GradientColors.shadyWater},
  {"name": "DirtyBeauty", "color": GradientColors.dirtyBeauty},
  {"name": "GreatWhale", "color": GradientColors.greatWhale},
  {"name": "TeenNotebook", "color": GradientColors.teenNotebook},
  {"name": "PoliteRumors", "color": GradientColors.politeRumors},
  {"name": "RedSalvation", "color": GradientColors.redSalvation},
  {"name": "NightParty", "color": GradientColors.nightParty},
  {"name": "SkyGlider", "color": GradientColors.skyGlider},
  {"name": "HeavenPeach", "color": GradientColors.heavenPeach},
  {"name": "PurpleDivision", "color": GradientColors.purpleDivision},
  {"name": "AquaSplash", "color": GradientColors.aquaSplash},
  {"name": "RedLove", "color": GradientColors.redLove},
  {"name": "CleanMirror", "color": GradientColors.cleanMirror},
  {"name": "PremiumDark", "color": GradientColors.premiumDark},
  {"name": "CochitiLake", "color": GradientColors.cochitiLake},
  {"name": "SummerGames", "color": GradientColors.summerGames},
  {"name": "PassionateRed", "color": GradientColors.passionateRed},
  {"name": "MountainRock", "color": GradientColors.mountainRock},
  {"name": "DesertHump", "color": GradientColors.desertHump},
  {"name": "JungleDay", "color": GradientColors.jungleDay},
  {"name": "PhoenixStart", "color": GradientColors.phoenixStart},
  {"name": "OctoberSilence", "color": GradientColors.octoberSilence},
  {"name": "FarawayRiver", "color": GradientColors.farawayRiver},
  {"name": "AslchemistLab", "color": GradientColors.alchemistLab},
  {"name": "OverSun", "color": GradientColors.overSun},
  {"name": "MarsParty", "color": GradientColors.marsParty},
  {"name": "EternalConstance", "color": GradientColors.eternalConstance},
  {"name": "SummerGames", "color": GradientColors.japanBlush},
  {"name": "JapanBlush", "color": GradientColors.summerGames},
  {"name": "SmilingRain", "color": GradientColors.smilingRain},
  {"name": "Cloudy", "color": GradientColors.cloudy},
  {"name": "BigMango", "color": GradientColors.bigMango},
  {"name": "HealthyWater", "color": GradientColors.healthyWater},
  {"name": "Amour", "color": GradientColors.amour},
  {"name": "StrongStick", "color": GradientColors.strongStick},
  {"name": "BlackGray", "color": GradientColors.blackGray},
  {"name": "PaloAlto", "color": GradientColors.paloAlto},
  {"name": "HappyMemories", "color": GradientColors.happyMemories},
  {"name": "MidnightBloom", "color": GradientColors.midnightBloom},
  {"name": "Crystalline", "color": GradientColors.crystalline},
  {"name": "PartyBliss", "color": GradientColors.partyBliss},
  {"name": "ConfidentCloud", "color": GradientColors.confidentCloud},
  {"name": "LeCocktail", "color": GradientColors.leCocktail},
  {"name": "RiverCity", "color": GradientColors.riverCity},
  {"name": "RozenBerry", "color": GradientColors.rozenBerry},
  {"name": "ChildCare", "color": GradientColors.childCare},
  {"name": "FlyingLemon", "color": GradientColors.flyingLemon},
  {"name": "HiddenJaguar", "color": GradientColors.hiddenJaguar},
  {"name": "Nega", "color": GradientColors.nega},
  {"name": "Seashore", "color": GradientColors.seashore},
  {"name": "MarbleWall", "color": GradientColors.marbleWall},
  {"name": "CheerfulCaramel", "color": GradientColors.cheerfulCaramel},
  {"name": "NightSky", "color": GradientColors.nightSky},
  {"name": "YoungGrass", "color": GradientColors.youngGrass},
  {"name": "ColorfulPeach", "color": GradientColors.colorfulPeach},
  {"name": "GentleCare", "color": GradientColors.gentleCare},
  {"name": "PlumBath", "color": GradientColors.plumBath},
  {"name": "HappyUnicorn", "color": GradientColors.happyUnicorn},
  {"name": "GlassWater", "color": GradientColors.glassWater},
];
