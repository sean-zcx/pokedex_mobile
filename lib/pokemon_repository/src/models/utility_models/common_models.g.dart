// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NamedAPIResource _$NamedAPIResourceFromJson(Map<String, dynamic> json) =>
    NamedAPIResource(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$NamedAPIResourceToJson(NamedAPIResource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionGameIndex _$VersionGameIndexFromJson(Map<String, dynamic> json) =>
    VersionGameIndex(
      gameIndex: json['gameIndex'] as int?,
      version: json['version'] == null
          ? null
          : NamedAPIResource.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionGameIndexToJson(VersionGameIndex instance) =>
    <String, dynamic>{
      'gameIndex': instance.gameIndex,
      'version': instance.version?.toJson(),
    };
