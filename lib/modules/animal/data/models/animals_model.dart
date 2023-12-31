import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_task/modules/animal/data/models/animal_details_model.dart';

part 'animals_model.freezed.dart';

part 'animals_model.g.dart';

@freezed
class AnimalsApiResponse with _$AnimalsApiResponse {
  const factory AnimalsApiResponse({
    required int count,
    @Key('entries') required List<AnimalDetailsModel> animalsList,
  }) = _AnimalsApiResponse;

  factory AnimalsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimalsApiResponseFromJson(json);
}
