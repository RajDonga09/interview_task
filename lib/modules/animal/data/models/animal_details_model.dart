import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal_details_model.freezed.dart';

part 'animal_details_model.g.dart';

@freezed
class AnimalDetailsModel with _$AnimalDetailsModel {
  const factory AnimalDetailsModel({
    @Key('API') required String name,
    @Key('Description') required String description,
    @Key('Auth') required String auth,
    @Key('Cors') required String cors,
    @Key('Link') required String link,
    @Key('Category') required String category,
    @Key('HTTPS') @Default(false) bool isHTTPS,
  }) = _AnimalDetailsModel;

  factory AnimalDetailsModel.fromJson(Map<String, dynamic> json) => _$AnimalDetailsModelFromJson(json);
}
