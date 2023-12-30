import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_task/core/error/exceptions.dart';
import 'package:interview_task/core/error/failures.dart';
import 'package:interview_task/core/usecases/usecase.dart';
import 'package:interview_task/modules/animal/data/models/animals_model.dart';
import 'package:interview_task/modules/animal/domain/repositories/animals_repository.dart';

@lazySingleton
class LoadAnimals implements UseCase<AnimalsApiResponse, NoParams> {
  final AnimalsRepository? repository;

  LoadAnimals(this.repository);

  @override
  Future<Either<Failure, AnimalsApiResponse>> call(NoParams params) async {
    try {
      return Right(await repository!.loadAnimals());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
