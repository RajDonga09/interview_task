import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_task/core/app_colors.dart';
import 'package:interview_task/core/app_strings.dart';
import 'package:interview_task/injection.dart';
import 'package:interview_task/modules/exercise/presentation/cubit/exercise_cubit.dart';
import 'package:interview_task/widget/exercise_card_item.dart';

class ExerciseMainScreen extends StatefulWidget {
  const ExerciseMainScreen({super.key});

  @override
  State<ExerciseMainScreen> createState() => _ExerciseMainScreenState();
}

class _ExerciseMainScreenState extends State<ExerciseMainScreen> {
  late ExerciseCubit exerciseCubit;

  @override
  void initState() {
    super.initState();
    exerciseCubit = getIt<ExerciseCubit>()..loadExerciseMethod();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackColor,
      body: BlocBuilder<ExerciseCubit, ExerciseState>(
        bloc: exerciseCubit,
        builder: (context, state) {
          if (state is ExerciseLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final exerciseModelList = state.exerciseModelList;

          return exerciseModelList.exerciseModelList.isNotEmpty
              ? Center(
                  child: ListView.separated(
                    itemCount: exerciseModelList.exerciseModelList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, int index) {
                      final exerciseModel =
                          exerciseModelList.exerciseModelList[index];
                      return ExerciseCardItem(
                        onTap: () {
                          exerciseCubit.changeExerciseStatusMethod(
                            id: exerciseModel.id,
                            isSelected: !exerciseModel.isSelected,
                          );
                        },
                        title: exerciseModel.title,
                        isSelected: exerciseModel.isSelected,
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
