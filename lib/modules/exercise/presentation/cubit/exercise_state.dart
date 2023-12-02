part of 'exercise_cubit.dart';

abstract class ExerciseState extends Equatable {
  final ExerciseModelList exerciseModelList;

  const ExerciseState({
    this.exerciseModelList = const ExerciseModelList(),
  });

  @override
  List<Object?> get props => [exerciseModelList];
}

class ExerciseInitial extends ExerciseState {}

class ExerciseLoading extends ExerciseState {}

class ExerciseLoaded extends ExerciseState {
  @override
  final ExerciseModelList exerciseModelList;

  const ExerciseLoaded({required this.exerciseModelList})
      : super(exerciseModelList: exerciseModelList);

  @override
  List<Object?> get props => [exerciseModelList];
}

class ExerciseLoadError extends ExerciseState {}

class ExerciseUpdatedSuccess extends ExerciseState {}

class ExerciseUpdatedError extends ExerciseState {}
