// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'common_models.g.dart';

@JsonSerializable(explicitToJson: true)
class NamedAPIResource {
  String? name;
  String? url;

  NamedAPIResource({
    this.name,
    this.url,
  });

  factory NamedAPIResource.fromJson(Map<String, dynamic> json) =>
      _$NamedAPIResourceFromJson(json);

  Map<String, dynamic> toJson() => _$NamedAPIResourceToJson(this);

  @override
  String toString() => 'NamedAPIResource(name: $name, url: $url)';
}

@JsonSerializable(explicitToJson: true)
class VersionGameIndex {
  // Define properties and constructor
  int? gameIndex;
  NamedAPIResource? version;

  VersionGameIndex({this.gameIndex, this.version});

  factory VersionGameIndex.fromJson(Map<String, dynamic> json) =>
      _$VersionGameIndexFromJson(json);

  Map<String, dynamic> toJson() => _$VersionGameIndexToJson(this);

  @override
  String toString() => 'VersionGameIndex(gameIndex: $gameIndex, version: $version)';
}
