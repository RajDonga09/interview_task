part of 'animal_cubit.dart';

abstract class AnimalsState extends Equatable {
  final AnimalsApiResponse animalsApiResponse;

  const AnimalsState({
    this.animalsApiResponse =
        const AnimalsApiResponse(count: 0, animalsList: []),
  });

  @override
  List<Object?> get props => [animalsApiResponse];
}

class AnimalInitial extends AnimalsState {}

class AnimalLoading extends AnimalsState {}

class AnimalsDetailsLoaded extends AnimalsState {
  @override
  final AnimalsApiResponse animalsApiResponse;

  const AnimalsDetailsLoaded({required this.animalsApiResponse})
      : super(
          animalsApiResponse: animalsApiResponse,
        );

  @override
  List<Object?> get props => [animalsApiResponse];
}

class AnimalsLoadError extends AnimalsState {}
