// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimplePokemon _$SimplePokemonFromJson(Map<String, dynamic> json) =>
    SimplePokemon(
      id: json['id'] as int?,
      name: json['name'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SimplePokemonToJson(SimplePokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'types': instance.types,
    };
