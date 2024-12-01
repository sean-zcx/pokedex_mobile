// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import '../utility_models/utility_models.dart';

part 'pokemon.g.dart';

@JsonSerializable(explicitToJson: true)
class Pokemon {
  int? id;
  String? name;
  @JsonKey(name: 'base_experience')
  int? baseExperience;
  int? height;
  @JsonKey(name: 'is_default')
  bool? isDefault;
  int? order;
  int? weight;
  List<PokemonAbility>? abilities;
  List<NamedAPIResource>? forms;
  @JsonKey(name: 'game_indices')
  List<VersionGameIndex>? gameIndices;
  @JsonKey(name: 'held_items')
  List<PokemonHeldItem>? heldItems;
  @JsonKey(name: 'location_area_encounters')
  String? locationAreaEncounters;
  List<PokemonMove>? moves;
  @JsonKey(name: 'past_types')
  List<PokemonTypePast>? pastTypes;
  PokemonSprites? sprites;
  PokemonCries? cries;
  NamedAPIResource? species;
  List<PokemonStat>? stats;
  List<PokemonType>? types;

  Pokemon({
    this.id,
    this.name,
    this.baseExperience,
    this.height,
    this.isDefault,
    this.order,
    this.weight,
    this.abilities,
    this.forms,
    this.gameIndices,
    this.heldItems,
    this.locationAreaEncounters,
    this.moves,
    this.pastTypes,
    this.sprites,
    this.cries,
    this.species,
    this.stats,
    this.types,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, baseExperience: $baseExperience, height: $height, isDefault: $isDefault, order: $order, weight: $weight, abilities: $abilities, forms: $forms, gameIndices: $gameIndices, heldItems: $heldItems, locationAreaEncounters: $locationAreaEncounters, moves: $moves, pastTypes: $pastTypes, species: $species, stats: $stats, types: $types)';
  }
}

@JsonSerializable(explicitToJson: true)
class PokemonAbility {
  @JsonKey(name: 'is_hidden')
  bool? isHidden;
  int? slot;
  NamedAPIResource? ability;

  PokemonAbility({this.isHidden, this.slot, this.ability});

  factory PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonAbilityToJson(this);

  @override
  String toString() => 'PokemonAbility(isHidden: $isHidden, slot: $slot, ability: $ability)';
}

@JsonSerializable(explicitToJson: true)
class PokemonHeldItem {
  NamedAPIResource? item;
  @JsonKey(name: 'version_details')
  List<PokemonHeldItemVersion>? versionDetails;

  PokemonHeldItem({this.item, this.versionDetails});

  factory PokemonHeldItem.fromJson(Map<String, dynamic> json) =>
      _$PokemonHeldItemFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonHeldItemToJson(this);

  @override
  String toString() => 'PokemonHeldItem(item: $item, versionDetails: $versionDetails)';
}

@JsonSerializable(explicitToJson: true)
class PokemonHeldItemVersion {
  NamedAPIResource? version;
  int? rarity;

  PokemonHeldItemVersion({this.version, this.rarity});

  factory PokemonHeldItemVersion.fromJson(Map<String, dynamic> json) =>
      _$PokemonHeldItemVersionFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonHeldItemVersionToJson(this);

  @override
  String toString() => 'PokemonHeldItemVersion(version: $version, rarity: $rarity)';
}

@JsonSerializable(explicitToJson: true)
class PokemonMove {
  NamedAPIResource? move;
  @JsonKey(name: 'version_group_details')
  List<PokemonMoveVersion>? versionGroupDetails;

  PokemonMove({this.move, this.versionGroupDetails});

  factory PokemonMove.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonMoveToJson(this);

  @override
  String toString() => 'PokemonMove(move: $move, versionGroupDetails: $versionGroupDetails)';
}

@JsonSerializable(explicitToJson: true)
class PokemonMoveVersion {
  @JsonKey(name: 'move_learn_method')
  NamedAPIResource? moveLearnMethod;
  @JsonKey(name: 'version_group')
  NamedAPIResource? versionGroup;
  @JsonKey(name: 'level_learned_at')
  int? levelLearnedAt;

  PokemonMoveVersion(
      {this.moveLearnMethod, this.versionGroup, this.levelLearnedAt});

  factory PokemonMoveVersion.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveVersionFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonMoveVersionToJson(this);

  @override
  String toString() => 'PokemonMoveVersion(moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup, levelLearnedAt: $levelLearnedAt)';
}

@JsonSerializable(explicitToJson: true)
class PokemonTypePast {
  NamedAPIResource? generation;
  List<PokemonType>? types;

  PokemonTypePast({this.generation, this.types});

  factory PokemonTypePast.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypePastFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonTypePastToJson(this);

  @override
  String toString() => 'PokemonTypePast(generation: $generation, types: $types)';
}

@JsonSerializable(explicitToJson: true)
class PokemonCries {
  String? latest;
  String? legacy;

  PokemonCries({this.latest, this.legacy});

  factory PokemonCries.fromJson(Map<String, dynamic> json) =>
      _$PokemonCriesFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonCriesToJson(this);

  @override
  String toString() => 'PokemonCries(latest: $latest, legacy: $legacy)';
}

@JsonSerializable(explicitToJson: true)
class PokemonSprites {
  @JsonKey(name: 'front_default')
  String? frontDefault;
  @JsonKey(name: 'front_shiny')
  String? frontShiny;
  @JsonKey(name: 'front_female')
  String? frontFemale;
  @JsonKey(name: 'front_shiny_female')
  String? frontShinyFemale;
  @JsonKey(name: 'back_default')
  String? backDefault;
  @JsonKey(name: 'back_shiny')
  String? backShiny;
  @JsonKey(name: 'back_female')
  String? backFemale;
  @JsonKey(name: 'back_shiny_female')
  String? backShinyFemale;

  PokemonSprites(
      {this.frontDefault,
      this.frontShiny,
      this.frontFemale,
      this.frontShinyFemale,
      this.backDefault,
      this.backShiny,
      this.backFemale,
      this.backShinyFemale});

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonSpritesToJson(this);

  @override
  String toString() {
    return 'PokemonSprites(frontDefault: $frontDefault, frontShiny: $frontShiny, frontFemale: $frontFemale, frontShinyFemale: $frontShinyFemale, backDefault: $backDefault, backShiny: $backShiny, backFemale: $backFemale, backShinyFemale: $backShinyFemale)';
  }
}

@JsonSerializable(explicitToJson: true)
class PokemonStat {
  NamedAPIResource? stat;
  int? effort;
  @JsonKey(name: 'base_stat')
  int? baseStat;

  PokemonStat({this.stat, this.effort, this.baseStat});

  factory PokemonStat.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonStatToJson(this);

  @override
  String toString() => 'PokemonStat(stat: $stat, effort: $effort, baseStat: $baseStat)';
}

@JsonSerializable(explicitToJson: true)
class PokemonFormType {
  int? slot;
  NamedAPIResource? type;

  PokemonFormType({this.slot, this.type});

  factory PokemonFormType.fromJson(Map<String, dynamic> json) =>
      _$PokemonFormTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonFormTypeToJson(this);

  @override
  String toString() => 'PokemonFormType(slot: $slot, type: $type)';
}

@JsonSerializable(explicitToJson: true)
class PokemonType {
  int? slot;
  NamedAPIResource? type;

  PokemonType({this.slot, this.type});

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonTypeToJson(this);

  @override
  String toString() => 'PokemonType(slot: $slot, type: $type)';
}
