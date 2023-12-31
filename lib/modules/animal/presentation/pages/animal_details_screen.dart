import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_task/core/app_colors.dart';
import 'package:interview_task/core/app_strings.dart';
import 'package:interview_task/injection.dart';
import 'package:interview_task/modules/animal/data/models/animal_details_model.dart';
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
                      final animalDetails =
                          animalApiResponse.animalsList[index];
                      return animalDetailsItemView(animalDetails);
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

  Widget animalDetailsItemView(AnimalDetailsModel animalDetails) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${AppString.name}: ${animalDetails.name}',
              style: commonsStyle,
            ),
            const SizedBox(height: 2),
            Text(
              '${AppString.description}: ${animalDetails.description}',
              style: commonsStyle,
            ),
            const SizedBox(height: 2),
            Text(
              '${AppString.category}: ${animalDetails.category}',
              style: commonsStyle,
            ),
            const SizedBox(height: 2),
            Text(
              '${AppString.auth}: ${animalDetails.auth}',
              style: commonsStyle,
            ),
            const SizedBox(height: 2),
            Text(
              '${AppString.cors}: ${animalDetails.cors}',
              style: commonsStyle,
            ),
            const SizedBox(height: 2),
            Text(
              '${AppString.link}: ${animalDetails.link}',
              style: commonsStyle,
            ),
            const SizedBox(height: 2),
          ],
        ),
      ),
    );
  }

  TextStyle get commonsStyle => const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
      );
}
