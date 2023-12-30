import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:interview_task/modules/animal/data/models/animals_model.dart';

abstract class AnimalsRemoteDataSource {
  Future<AnimalsApiResponse> loadAnimals();
}

@LazySingleton(as: AnimalsRemoteDataSource, env: [Environment.dev, Environment.prod])
class AnimalsHostApiDataSource implements AnimalsRemoteDataSource {
  @override
  Future<AnimalsApiResponse> loadAnimals() async {
    /// Load data from API
    //
    // final exercisesList = await PreferencesManager.getExerciseData();
    // return AnimalsList(exerciseModelList: exercisesList);
    return const AnimalsApiResponse(count: 10, animalsList: []);
  }
}
