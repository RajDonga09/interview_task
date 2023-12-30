import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_task/core/app_colors.dart';
import 'package:interview_task/core/app_strings.dart';
import 'package:interview_task/injection.dart';
import 'package:interview_task/modules/animal/presentation/cubit/animal_cubit.dart';

class AnimalsDetailsScreen extends StatefulWidget {
  const AnimalsDetailsScreen({super.key});

  @override
  State<AnimalsDetailsScreen> createState() => _AnimalsDetailsScreenState();
}

class _AnimalsDetailsScreenState extends State<AnimalsDetailsScreen> {
  late AnimalsCubit animalsCubit;

  @override
  void initState() {
    super.initState();
    animalsCubit = getIt<AnimalsCubit>()..loadAnimalDetailsMethod();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackColor,
      body: BlocBuilder<AnimalsCubit, AnimalsState>(
        bloc: animalsCubit,
        builder: (context, state) {
          if (state is AnimalLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final animalApiResponse = state.animalsApiResponse;

          return animalApiResponse.animalsList.isNotEmpty
              ? Center(
                  child: ListView.separated(
                    itemCount: animalApiResponse.animalsList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, int index) {
                      final exerciseModel = animalApiResponse.animalsList[index];
                      return Card(
                        child: Container(
                          height: 100,
                          color: Colors.red,
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 30);
                    },
                  ),
                )
              : const Center(
                  child: Text(
                    AppString.noDataFound,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
