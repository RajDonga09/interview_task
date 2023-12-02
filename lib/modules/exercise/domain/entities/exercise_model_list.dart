import 'package:equatable/equatable.dart';
import 'package:interview_task/modules/exercise/data/models/exercise_model.dart';

class ExerciseModelList extends Equatable {
  final List<ExerciseModel> exerciseModelList;

  const ExerciseModelList({this.exerciseModelList = const []});

  @override
  List<Object?> get props => [exerciseModelList];
}
