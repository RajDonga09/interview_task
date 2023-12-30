import 'package:injectable/injectable.dart';
import 'package:interview_task/core/error/exceptions.dart';
import 'package:interview_task/modules/animal/data/datasources/animals_remote_data_source.dart';
import 'package:interview_task/modules/animal/data/models/animals_model.dart';
import 'package:interview_task/modules/animal/domain/repositories/animals_repository.dart';

@LazySingleton(as: AnimalsRepository)
class AnimalsRepositoryImpl implements AnimalsRepository {
  final AnimalsRemoteDataSource? remoteDataSource;

  AnimalsRepositoryImpl(this.remoteDataSource);

  @override
  Future<AnimalsApiResponse> loadAnimals() async {
    try {
      return await remoteDataSource!.loadAnimals();
    } on ServerException {
      throw ServerException();
    }
  }
}
