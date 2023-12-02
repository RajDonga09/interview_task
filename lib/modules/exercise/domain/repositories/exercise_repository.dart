import 'package:interview_task/modules/exercise/domain/entities/exercise_model_list.dart';
import 'package:interview_task/modules/exercise/domain/usecases/change_exercise_status.dart';

abstract class ExerciseRepository {
  Future<ExerciseModelList> loadExercises();

  Future<ExerciseModelList> changeExercisesStatus(ExerciseParams params);
}
