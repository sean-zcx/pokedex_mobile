// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'simple_pokemon.g.dart';

@JsonSerializable(explicitToJson: true)
class SimplePokemon {
  int? id;
  String? name;
  List<String>? types;

  SimplePokemon({
    this.id,
    this.name,
    this.types,
  });

  factory SimplePokemon.fromJson(Map<String, dynamic> json) =>
      _$SimplePokemonFromJson(json);

  Map<String, dynamic> toJson() => _$SimplePokemonToJson(this);

  @override
  String toString() => 'SimplePokemon(id: $id, name: $name, types: $types)';
}
