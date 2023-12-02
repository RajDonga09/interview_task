import 'dart:async';
import 'dart:convert';
import 'package:interview_task/modules/exercise/data/models/exercise_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager {
  static late SharedPreferences _prefs;

  static const String exerciseKey = 'EXERCISE_DATA';
  static const String exerciseListKey = 'exerciseList';

  static Future<void> initPreferencesManager() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> clearSharedPreferences() async {
    await _prefs.clear();
  }

  static Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  static String getString(String key) {
    final value = _prefs.getString(key);
    return value ?? '';
  }

  static Future<void> setBoolean(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  static bool getBoolean(String key) {
    final value = _prefs.getBool(key);
    return value ?? false;
  }

  static Future<void> setLong(String key, double value) async {
    await _prefs.setDouble(key, value);
  }

  static double getLong(String key) {
    final value = _prefs.getDouble(key);
    return value ?? 0.0;
  }

  static Future<void> setInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  static int getInt(String key) {
    final value = _prefs.getInt(key);
    return value ?? -1;
  }

  static Future<void> saveExerciseData(
    List<ExerciseModel> exerciseModelList,
  ) async {
    await clearSharedPreferences();
    final exerciseListMap = <String, dynamic>{
      exerciseListKey: exerciseModelList.map((e) => e.toJson()).toList(),
    };

    await _prefs.setString(exerciseKey, json.encode(exerciseListMap));
  }

  static Future<List<ExerciseModel>> getExerciseData() async {
    final exerciseList = <ExerciseModel>[];
    final saveExerciseListString = _prefs.getString(exerciseKey);
    if (saveExerciseListString != null) {
      final exerciseListMap = json.decode(
        saveExerciseListString,
      ) as Map<String, dynamic>;

      print('exerciseListMapL ${exerciseListMap}');
      final tempExerciseList = (exerciseListMap[exerciseListKey] as List)
          .map((e) => ExerciseModel.fromJson(e as Map<String, dynamic>))
          .toList();
      exerciseList.addAll(tempExerciseList);
    } else {
      exerciseList.addAll(exerciseData.map(ExerciseModel.fromJson).toList());
      await saveExerciseData(exerciseList);

      return exerciseList;
    }

    return exerciseList;
  }
}

List<Map<String, Object>> exerciseData = [
  {'id': '1', 'title': 'Bodyweight', 'image': ''},
  {'id': '2', 'title': 'Dumbbells', 'image': ''},
  {'id': '3', 'title': 'Bands', 'image': ''},
];
