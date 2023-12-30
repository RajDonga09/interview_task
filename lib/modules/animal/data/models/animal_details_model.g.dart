// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalDetailsModelImpl _$$AnimalDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimalDetailsModelImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      auth: json['auth'] as String,
      cors: json['cors'] as String,
      link: json['link'] as String,
      category: json['category'] as String,
      isHTTPS: json['isHTTPS'] as bool? ?? false,
    );

Map<String, dynamic> _$$AnimalDetailsModelImplToJson(
        _$AnimalDetailsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'auth': instance.auth,
      'cors': instance.cors,
      'link': instance.link,
      'category': instance.category,
      'isHTTPS': instance.isHTTPS,
    };
