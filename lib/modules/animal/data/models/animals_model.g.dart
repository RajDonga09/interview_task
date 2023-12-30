// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animals_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalsApiResponseImpl _$$AnimalsApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimalsApiResponseImpl(
      count: json['count'] as int,
      animalsList: (json['animalsList'] as List<dynamic>)
          .map((e) => AnimalDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimalsApiResponseImplToJson(
        _$AnimalsApiResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'animalsList': instance.animalsList,
    };
