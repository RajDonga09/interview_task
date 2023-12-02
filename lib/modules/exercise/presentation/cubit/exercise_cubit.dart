import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_task/core/usecases/usecase.dart';
import 'package:interview_task/modules/exercise/data/models/exercise_model.dart';
import 'package:interview_task/modules/exercise/domain/entities/exercise_model_list.dart';
import 'package:interview_task/modules/exercise/domain/usecases/change_exercise_status.dart';
import 'package:interview_task/modules/exercise/domain/usecases/load_exercise.dart';

part 'exercise_state.dart';

@injectable
class ExerciseCubit extends Cubit<ExerciseState> {
  final LoadExercise loadExercise;
  final ChangeExerciseStatus changeExerciseStatus;

  ExerciseCubit({
    required this.loadExercise,
    required this.changeExerciseStatus,
  }) : super(ExerciseInitial());

  Future<void> loadExerciseMethod() async {
    emit(ExerciseLoading());
    final loadExerciseEither = await loadExercise(NoParams());
    loadExerciseEither.fold(
      (_) {
        emit(ExerciseLoadError());
      },
      (response) {
        emit(ExerciseLoaded(exerciseModelList: response));
      },
    );
  }

  Future<void> changeExerciseStatusMethod({
    required String id,
    required bool isSelected,
  }) async {
    final params = ExerciseParams(id: id, isSelected: isSelected);
    final changeExerciseStatusEither = await changeExerciseStatus(params);
    changeExerciseStatusEither.fold(
      (_) {
        emit(ExerciseUpdatedError());
      },
      (response) {
        emit(ExerciseLoaded(exerciseModelList: response));
      },
    );
  }
}
