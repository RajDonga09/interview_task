import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_task/core/error/exceptions.dart';
import 'package:interview_task/core/error/failures.dart';
import 'package:interview_task/core/usecases/usecase.dart';
import 'package:interview_task/modules/exercise/domain/entities/exercise_model_list.dart';
import 'package:interview_task/modules/exercise/domain/repositories/exercise_repository.dart';

@lazySingleton
class LoadExercise implements UseCase<ExerciseModelList, NoParams> {
  final ExerciseRepository? repository;

  LoadExercise(this.repository);

  @override
  Future<Either<Failure, ExerciseModelList>> call(NoParams params) async {
    try {
      return Right(await repository!.loadExercises());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
