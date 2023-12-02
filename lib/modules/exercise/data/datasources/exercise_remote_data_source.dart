import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:interview_task/core/error/exceptions.dart';
import 'package:interview_task/core/preferences/preferences_manager.dart';
import 'package:interview_task/modules/exercise/domain/entities/exercise_model_list.dart';
import 'package:interview_task/modules/exercise/domain/usecases/change_exercise_status.dart';

abstract class ExerciseRemoteDataSource {
  Future<ExerciseModelList> loadExercises();

  Future<ExerciseModelList> changeExercisesStatus(ExerciseParams params);
}

@LazySingleton(
    as: ExerciseRemoteDataSource, env: [Environment.dev, Environment.prod])
class ExerciseHostApiDataSource implements ExerciseRemoteDataSource {
  @override
  Future<ExerciseModelList> loadExercises() async {
    /// Load data from API

    final exercisesList = await PreferencesManager.getExerciseData();
    return ExerciseModelList(exerciseModelList: exercisesList);
  }

  @override
  Future<ExerciseModelList> changeExercisesStatus(ExerciseParams params) async {
    /// Change exercise status

    final exercisesList = await PreferencesManager.getExerciseData();
    final changeItemIndex =
        exercisesList.indexWhere((element) => element.id == params.id);

    if (changeItemIndex != -1) {
      exercisesList[changeItemIndex] = exercisesList[changeItemIndex].copyWith(
        isSelected: params.isSelected,
        id: exercisesList[changeItemIndex].id,
        title: exercisesList[changeItemIndex].title,
      );
      await PreferencesManager.saveExerciseData(exercisesList);
    } else {
      throw ConflictException();
    }
    return ExerciseModelList(exerciseModelList: exercisesList);
  }
}
