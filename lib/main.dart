import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_task/core/preferences/preferences_manager.dart';
import 'package:interview_task/exercise_app.dart';
import 'package:interview_task/injection.dart';
import 'package:interview_task/modules/exercise/presentation/cubit/exercise_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferencesManager.initPreferencesManager();
  configureDependencies(Environment.dev);

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      BlocProvider(
        create: (context) => getIt<ExerciseCubit>(),
        child: AnnotatedRegion(
          value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness:
                Platform.isIOS ? Brightness.dark : Brightness.light,
            statusBarBrightness:
                Platform.isIOS ? Brightness.dark : Brightness.light,
          ),
          child: const ExerciseApp(),
        ),
      ),
    );
  });
}
