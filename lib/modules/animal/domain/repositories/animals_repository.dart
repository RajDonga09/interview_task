import 'package:interview_task/modules/animal/data/models/animals_model.dart';

abstract class AnimalsRepository {
  Future<AnimalsApiResponse> loadAnimals();
}
