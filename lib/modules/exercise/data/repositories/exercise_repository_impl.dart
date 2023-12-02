import 'package:injectable/injectable.dart';
import 'package:interview_task/core/error/exceptions.dart';
import 'package:interview_task/modules/exercise/data/datasources/exercise_remote_data_source.dart';
import 'package:interview_task/modules/exercise/domain/entities/exercise_model_list.dart';
import 'package:interview_task/modules/exercise/domain/repositories/exercise_repository.dart';
import 'package:interview_task/modules/exercise/domain/usecases/change_exercise_status.dart';

@LazySingleton(as: ExerciseRepository)
class ExerciseRepositoryImpl implements ExerciseRepository {
  final ExerciseRemoteDataSource? remoteDataSource;

  ExerciseRepositoryImpl(this.remoteDataSource);

  @override
  Future<ExerciseModelList> loadExercises() async {
    try {
      return await remoteDataSource!.loadExercises();
    } on ServerException {
      throw ServerException();
    }
  }

  @override
  Future<ExerciseModelList> changeExercisesStatus(ExerciseParams params) async {
    try {
      return await remoteDataSource!.changeExercisesStatus(params);
    } on ServerException {
      throw ServerException();
    }
  }
}
