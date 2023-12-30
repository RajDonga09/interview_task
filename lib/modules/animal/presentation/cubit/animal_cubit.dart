import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_task/core/usecases/usecase.dart';
import 'package:interview_task/modules/animal/data/models/animals_model.dart';
import 'package:interview_task/modules/animal/domain/usecases/load_animals.dart';
import 'package:interview_task/modules/exercise/data/models/exercise_model.dart';
import 'package:interview_task/modules/exercise/domain/entities/exercise_model_list.dart';
import 'package:interview_task/modules/exercise/domain/usecases/change_exercise_status.dart';
import 'package:interview_task/modules/exercise/domain/usecases/load_exercise.dart';

part 'animal_state.dart';

@injectable
class AnimalsCubit extends Cubit<AnimalsState> {
  final LoadAnimals loadAnimals;

  AnimalsCubit({
    required this.loadAnimals,
  }) : super(AnimalInitial());

  Future<void> loadAnimalDetailsMethod() async {
    emit(AnimalLoading());
    final loadExerciseEither = await loadAnimals(NoParams());
    loadExerciseEither.fold(
      (_) {
        emit(AnimalsLoadError());
      },
      (response) {
        emit(AnimalsDetailsLoaded(animalsApiResponse: response));
      },
    );
  }
}
