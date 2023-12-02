import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_task/core/error/exceptions.dart';
import 'package:interview_task/core/error/failures.dart';
import 'package:interview_task/core/usecases/usecase.dart';
import 'package:interview_task/modules/exercise/domain/entities/exercise_model_list.dart';
import 'package:interview_task/modules/exercise/domain/repositories/exercise_repository.dart';

@lazySingleton
class ChangeExerciseStatus implements UseCase<void, ExerciseParams> {
  final ExerciseRepository? repository;

  ChangeExerciseStatus(this.repository);

  @override
  Future<Either<Failure, ExerciseModelList>> call(ExerciseParams params) async {
    try {
      return Right(await repository!.changeExercisesStatus(params));
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

class ExerciseParams {
  final String id;
  final bool isSelected;

  ExerciseParams({required this.id, this.isSelected = false});
}
