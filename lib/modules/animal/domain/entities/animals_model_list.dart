import 'package:equatable/equatable.dart';
import 'package:interview_task/modules/animal/data/models/animal_details_model.dart';

class AnimalModelList extends Equatable {
  final List<AnimalDetailsModel> animalModelList;

  const AnimalModelList({this.animalModelList = const []});

  @override
  List<Object?> get props => [animalModelList];
}
